@IsTest
private class PaymentLinkResponseTest {
    @IsTest
    static void getExampleTest() {
        PaymentLinkResponse paymentLinkResponse = PaymentLinkResponse.getExample();
        Assert.isNotNull(paymentLinkResponse);
        Assert.isNotNull(paymentLinkResponse.amount);
        Assert.isNotNull(paymentLinkResponse.merchantAccount);
        Assert.isNotNull(paymentLinkResponse.reference);
        Assert.isNotNull(paymentLinkResponse.url);
        Assert.isNotNull(paymentLinkResponse.id);
    }

    @IsTest
    static void testEqualsTrue() {
        // Given
        PaymentLinkResponse res1 = PaymentLinkResponse.getExample();
        PaymentLinkResponse res2 = PaymentLinkResponse.getExample();

        // When
        Boolean result = res1.equals(res2);

        // Then
        Assert.isTrue(result, 'Expected both PaymentLinkResponse objects to be equal');
    }

    @IsTest
    static void testEqualsFalse() {
        // Given
        PaymentLinkResponse res1 = PaymentLinkResponse.getExample();
        PaymentLinkResponse res2 = PaymentLinkResponse.getExample();
        res2.reference = 'DIFFERENT_REFERENCE_NUMBER';

        // When
        Boolean result = res1.equals(res2);

        // Then
        Assert.isTrue(!result, 'Expected PaymentLinkResponse objects to be different');
    }

    @IsTest
    static void testHashCodeSame() {
        // Given
        PaymentLinkResponse res1 = PaymentLinkResponse.getExample();
        PaymentLinkResponse res2 = PaymentLinkResponse.getExample();

        // When
        Integer hashCode1 = res1.hashCode();
        Integer hashCode2 = res2.hashCode();

        // Then
        Assert.areEqual(hashCode1, hashCode2, 'Expected identical objects to have the same hash code');
    }

    @IsTest
    static void testHashCodeDifferent() {
        // Given
        PaymentLinkResponse res1 = PaymentLinkResponse.getExample();
        PaymentLinkResponse res2 = PaymentLinkResponse.getExample();
        res2.reference = 'DIFFERENT_REFERENCE_NUMBER';

        // When
        Integer hashCode1 = res1.hashCode();
        Integer hashCode2 = res2.hashCode();

        // Then
        Assert.areNotEqual(hashCode1, hashCode2, 'Expected different objects to have different hash codes');
    }
}