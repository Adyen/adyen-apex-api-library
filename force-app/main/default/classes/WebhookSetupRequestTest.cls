@IsTest
private class WebhookSetupRequestTest {
    @IsTest
    static void getExampleTest() {
        WebhookSetupRequest request = WebhookSetupRequest.getExample();
        Assert.isNotNull(request);
        Assert.isNotNull(request.url);
        Assert.isNotNull(request.communicationFormat);
        Assert.isNotNull(request.type);
        Assert.isNotNull(request.encryptionProtocol);
        Assert.isNotNull(request.filterMerchantAccountType);
        Assert.isNotNull(request.filterMerchantAccounts);
    }

    @IsTest
    static void testEqualsTrue() {
        // Given
        WebhookSetupRequest req1 = WebhookSetupRequest.getExample();
        WebhookSetupRequest req2 = WebhookSetupRequest.getExample();

        // When
        Boolean result = req1.equals(req2);

        // Then
        Assert.isTrue(result, 'Expected both WebhookSetupRequest objects to be equal');
    }

    @IsTest
    static void testEqualsFalse() {
        // Given
        WebhookSetupRequest req1 = WebhookSetupRequest.getExample();
        WebhookSetupRequest req2 = WebhookSetupRequest.getExample();
        req2.url = 'https://different-url.com/webhook';

        // When
        Boolean result = req1.equals(req2);

        // Then
        Assert.isFalse(result, 'Expected WebhookSetupRequest objects to be different');
    }

    @IsTest
    static void testEqualsFalseWithFilterMerchantAccounts() {
        // Given
        WebhookSetupRequest req1 = WebhookSetupRequest.getExample();
        WebhookSetupRequest req2 = WebhookSetupRequest.getExample();
        req2.filterMerchantAccounts = new List<String>{'AnotherAccount'};

        // When
        Boolean result = req1.equals(req2);

        // Then
        Assert.isFalse(result, 'Expected WebhookSetupRequest objects to be different due to filterMerchantAccounts');
    }

    @IsTest
    static void testHashCodeSame() {
        // Given
        WebhookSetupRequest req1 = WebhookSetupRequest.getExample();
        WebhookSetupRequest req2 = WebhookSetupRequest.getExample();

        // When
        Integer hashCode1 = req1.hashCode();
        Integer hashCode2 = req2.hashCode();

        // Then
        Assert.areEqual(hashCode1, hashCode2, 'Expected identical objects to have the same hash code');
    }

    @IsTest
    static void testHashCodeDifferent() {
        // Given
        WebhookSetupRequest req1 = WebhookSetupRequest.getExample();
        WebhookSetupRequest req2 = WebhookSetupRequest.getExample();
        req2.url = 'https://different-url.com/webhook';

        // When
        Integer hashCode1 = req1.hashCode();
        Integer hashCode2 = req2.hashCode();

        // Then
        Assert.areNotEqual(hashCode1, hashCode2, 'Expected different objects to have different hash codes');
    }

    @IsTest
    static void testHashCodeDifferentWithFilterMerchantAccounts() {
        // Given
        WebhookSetupRequest req1 = WebhookSetupRequest.getExample();
        WebhookSetupRequest req2 = WebhookSetupRequest.getExample();
        req2.filterMerchantAccounts = new List<String>{'AnotherAccount'};

        // When
        Integer hashCode1 = req1.hashCode();
        Integer hashCode2 = req2.hashCode();

        // Then
        Assert.areNotEqual(hashCode1, hashCode2, 'Expected different objects to have different hash codes due to filterMerchantAccounts');
    }
}