@IsTest
public class CheckoutRefundRequestTest {

    @IsTest
    static void getExampleTest() {
        CheckoutRefundRequest refundRequest = CheckoutRefundRequest.getExample();
        Assert.isNotNull(refundRequest);
        Assert.isNotNull(refundRequest.amount);
        Assert.isNotNull(refundRequest.applicationInfo);
        Assert.isNotNull(refundRequest.capturePspReference);
        Assert.isNotNull(refundRequest.lineItems);
        Assert.isNotNull(refundRequest.merchantAccount);
        Assert.isNotNull(refundRequest.merchantRefundReason);
        Assert.isNotNull(refundRequest.reference);
        Assert.isNotNull(refundRequest.store);
    }

    @IsTest
    static void testEqualsTrue() {
        // Given
        CheckoutRefundRequest req1 = CheckoutRefundRequest.getExample();
        CheckoutRefundRequest req2 = CheckoutRefundRequest.getExample();

        // When
        Boolean result = req1.equals(req2);

        // Then
        Assert.isTrue(result, 'Expected both CheckoutRefundRequest objects to be equal');
    }

    @IsTest
    static void testEqualsFalse() {
        // Given
        CheckoutRefundRequest req1 = CheckoutRefundRequest.getExample();
        CheckoutRefundRequest req2 = CheckoutRefundRequest.getExample();
        req2.reference = 'DIFFERENT_REFERENCE_NUMBER';

        // When
        Boolean result = req1.equals(req2);

        // Then
        Assert.isFalse(result, 'Expected CheckoutRefundRequest objects to be different');
    }

    @IsTest
    static void testHashCodeSame() {
        // Given
        CheckoutRefundRequest req1 = CheckoutRefundRequest.getExample();
        CheckoutRefundRequest req2 = CheckoutRefundRequest.getExample();

        // When
        Integer hashCode1 = req1.hashCode();
        Integer hashCode2 = req2.hashCode();

        // Then
        Assert.areEqual(hashCode1, hashCode2, 'Expected identical objects to have the same hash code');
    }

    @IsTest
    static void testHashCodeDifferent() {
        // Given
        CheckoutRefundRequest req1 = CheckoutRefundRequest.getExample();
        CheckoutRefundRequest req2 = CheckoutRefundRequest.getExample();
        req2.reference = 'DIFFERENT_REFERENCE_NUMBER';

        // When
        Integer hashCode1 = req1.hashCode();
        Integer hashCode2 = req2.hashCode();

        // Then
        Assert.areNotEqual(hashCode1, hashCode2, 'Expected different objects to have different hash codes');
    }

    @IsTest
    static void gettersAndSettersTest() {
        // Given
        CheckoutRefundRequest refundRequest = new CheckoutRefundRequest();
        refundRequest.setAmount(Amount.getExample());
        refundRequest.setApplicationInfo(ApplicationInfo.getExample());
        refundRequest.setLineItems(new List<LineItem>());
        refundRequest.setMerchantAccount(AdyenConstants.TEST_MERCHANT_ACCOUNT);
        refundRequest.setReference(AdyenConstants.TEST_REFERENCE);

        // Then
        Assert.areEqual(Amount.getExample(), refundRequest.getAmount());
        Assert.areEqual(ApplicationInfo.getExample(), refundRequest.getApplicationInfo());
        Assert.isNotNull(refundRequest.getLineItems());
        Assert.areEqual(AdyenConstants.TEST_MERCHANT_ACCOUNT, refundRequest.getMerchantAccount());
        Assert.areEqual(AdyenConstants.TEST_REFERENCE, refundRequest.getReference());
    }
}
