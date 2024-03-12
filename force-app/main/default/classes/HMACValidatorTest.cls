@isTest
private class HMACValidatorTest {

    @isTest
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

        HMACValidator validator = new HMACValidator();
        String hmac = validator.calculateHMAC(requestItem, hmacKey);

        // Assert that the HMAC is not null
        System.assertNotEquals(null, hmac);
    }

    @isTest
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

        HMACValidator validator = new HMACValidator();
        String expectedHmac = validator.calculateHMAC(requestItem, hmacKey);

        requestItem.additionalData = new Map<String, String>{
            'hmacSignature' => expectedHmac
        };

        Boolean isValid = validator.validateHMAC(requestItem, hmacKey);

        System.assertEquals(true, isValid);
    }

    @isTest
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

        HMACValidator validator = new HMACValidator();
        Boolean isValid = validator.validateHMAC(requestItem, hmacKey);

        System.assertEquals(false, isValid);
    }

    // Tests the correct HMAC creation
    @isTest
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

        HMACValidator validator = new HMACValidator();
        String expectedHmac = validator.calculateHMAC(requestItem, hmacKey);
        System.assertEquals('coqCmt/IZ4E3CzPvMY8zTjQVL5hYJUiBRg8UU+iCWo0=', expectedHmac);
    }
}
