@IsTest
private class PaymentLinkRequestTest {
    @IsTest
    static void getExampleTest() {
        PaymentLinkRequest paymentLinkRequest = PaymentLinkRequest.getExample();
        Assert.isNotNull(paymentLinkRequest);
        Assert.isNotNull(paymentLinkRequest.allowedPaymentMethods);
        Assert.isNotNull(paymentLinkRequest.amount);
        Assert.isNotNull(paymentLinkRequest.merchantAccount);
        Assert.isNotNull(paymentLinkRequest.reference);
    }

    @IsTest
    static void testEqualsTrue() {
        // Given
        PaymentLinkRequest req1 = PaymentLinkRequest.getExample();
        PaymentLinkRequest req2 = PaymentLinkRequest.getExample();

        // When
        Boolean result = req1.equals(req2);

        // Then
        Assert.isTrue(result, 'Expected both PaymentLinkRequest objects to be equal');
    }

    @IsTest
    static void testEqualsFalse() {
        // Given
        PaymentLinkRequest req1 = PaymentLinkRequest.getExample();
        PaymentLinkRequest req2 = PaymentLinkRequest.getExample();
        req2.reference = 'DIFFERENT_REFERENCE_NUMBER';

        // When
        Boolean result = req1.equals(req2);

        // Then
        Assert.isFalse(result, 'Expected PaymentLinkRequest objects to be different');
    }

    @IsTest
    static void testHashCodeSame() {
        // Given
        PaymentLinkRequest req1 = PaymentLinkRequest.getExample();
        PaymentLinkRequest req2 = PaymentLinkRequest.getExample();

        // When
        Integer hashCode1 = req1.hashCode();
        Integer hashCode2 = req2.hashCode();

        // Then
        Assert.areEqual(hashCode1, hashCode2, 'Expected identical objects to have the same hash code');
    }

    @IsTest
        static void testHashCodeDifferent() {
        // Given
        PaymentLinkRequest req1 = PaymentLinkRequest.getExample();
        PaymentLinkRequest req2 = PaymentLinkRequest.getExample();
        req2.reference = 'DIFFERENT_REFERENCE_NUMBER';

        // When
        Integer hashCode1 = req1.hashCode();
        Integer hashCode2 = req2.hashCode();

        // Then
        Assert.areNotEqual(hashCode1, hashCode2, 'Expected different objects to have different hash codes');
    }
}