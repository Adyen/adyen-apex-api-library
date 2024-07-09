@IsTest
private class HMACValidatorTest {

    @IsTest
    static void testCalculateHMAC() {
        NotificationRequestItem requestItem = new NotificationRequestItem();
        requestItem.amount = new Amount();

        requestItem.pspReference = '123456789';
        requestItem.originalReference = '987654321';
        requestItem.merchantAccountCode = 'TestMerchant';
        requestItem.merchantReference = 'TestPayment-123';
        requestItem.amount.value = 1000;
        requestItem.amount.currency_x = 'USD';
        requestItem.eventCode = 'AUTHORISATION';
        requestItem.success = 'true';

        String hmacKey = '0123456789ABCDEF';

        HMACValidator validator = new HMACValidator(requestItem, hmacKey);
        String hmac = validator.calculateHMAC();

        // Assert that the HMAC is not null
        Assert.isNotNull(hmac);
    }

    @IsTest
    static void testValidateHMAC() {
        NotificationRequestItem requestItem = new NotificationRequestItem();
        requestItem.amount = new Amount();
        requestItem.pspReference = '123456789';
        requestItem.originalReference = '987654321';
        requestItem.merchantAccountCode = 'TestMerchant';
        requestItem.merchantReference = 'TestPayment-123';
        requestItem.amount.value = 1000;
        requestItem.amount.currency_x = 'USD';
        requestItem.eventCode = 'AUTHORISATION';
        requestItem.success = 'true';

        String hmacKey = '0123456789ABCDEF';

        HMACValidator validator = new HMACValidator(requestItem, hmacKey);
        String expectedHmac = validator.calculateHMAC();

        requestItem.additionalData = new Map<String, String>{
            'hmacSignature' => expectedHmac
        };

        Boolean isValid = validator.validateHMAC();

        Assert.isTrue(isValid);
    }

    @IsTest
    static void testInvalidHMAC() {
        NotificationRequestItem requestItem = new NotificationRequestItem();

        String hmacKey = '44782DEF547AAA06C910C43932B1EB0C71FC68D9D0C057550C48EC2ACF6BA056';
        
        requestItem.amount = new Amount();
        requestItem.pspReference = '7914073381342284';
        requestItem.originalReference = '';
        requestItem.merchantAccountCode = 'TestMerchant';
        requestItem.merchantReference = 'TestPayment-1407325143704';
        requestItem.amount.value = 1130;
        requestItem.amount.currency_x = 'EUR';
        requestItem.eventCode = 'AUTHORISATION';
        requestItem.success = 'true';


        // Assigning an dummy HMAC Key in additional data, missing the last character from the expected one
        requestItem.additionalData = new Map<String, String>{
            'hmacSignature' => 'coqCmt/IZ4E3CzPvMY8zTjQVL5hYJUiBRg8UU+iCWo0'
        };

        HMACValidator validator = new HMACValidator(requestItem, hmacKey);
        Boolean isValid = validator.validateHMAC();

        Assert.isFalse(isValid);
    }

    // Tests the correct HMAC creation
    @IsTest
    static void testCorrectHMACSignatureCreation() {
        NotificationRequestItem requestItem = new NotificationRequestItem();
        requestItem.amount = new Amount();
        requestItem.pspReference = '7914073381342284';
        requestItem.originalReference = '';
        requestItem.merchantAccountCode = 'TestMerchant';
        requestItem.merchantReference = 'TestPayment-1407325143704';
        requestItem.amount.value = 1130;
        requestItem.amount.currency_x = 'EUR';
        requestItem.eventCode = 'AUTHORISATION';
        requestItem.success = 'true';

        String hmacKey = '44782DEF547AAA06C910C43932B1EB0C71FC68D9D0C057550C48EC2ACF6BA056';

        HMACValidator validator = new HMACValidator(requestItem, hmacKey);
        String expectedHmac = validator.calculateHMAC();
        Assert.areEqual('coqCmt/IZ4E3CzPvMY8zTjQVL5hYJUiBRg8UU+iCWo0=', expectedHmac);
    }

    @IsTest
    static void testHMACException() {
        NotificationRequestItem requestItem = new NotificationRequestItem();
        String hmacKey = 'some key';
        HMACValidator validator;
        // given no Notification Request Item
        try { // when
            validator = new HMACValidator(null, hmacKey);
            Assert.fail();
        } catch(HMACValidator.HmacValidationException ex) { // then
            Assert.isTrue(ex.getMessage().containsIgnoreCase('Invalid'));
        }
        // given no hmac key
        try { // when
            validator = new HMACValidator(requestItem, null);
            Assert.fail();
        } catch(HMACValidator.HmacValidationException ex) { // then
            Assert.isTrue(ex.getMessage().containsIgnoreCase('Invalid'));
        }
        // given no merchant signature
        try { // when
            validator = new HMACValidator(requestItem, hmacKey);
            validator.validateHMAC();
            Assert.fail();
        } catch(HMACValidator.HmacValidationException ex) { // then
            Assert.isTrue(ex.getMessage().containsIgnoreCase('Missing'));
        }
    }
}
