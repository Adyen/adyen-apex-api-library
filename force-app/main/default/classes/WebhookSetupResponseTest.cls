@IsTest
private class WebhookSetupResponseTest {
    
    @IsTest
    static void getExampleTest() {
        // When
        WebhookSetupResponse response = WebhookSetupResponse.getExample();

        // Then
        Assert.isNotNull(response);
        Assert.isNotNull(response.id);
        Assert.isNotNull(response.url);
        Assert.isNotNull(response.filterMerchantAccountType);
        Assert.isNotNull(response.filterMerchantAccounts);
    }
    
    @IsTest
    static void testEqualsTrue() {
        // Given
        WebhookSetupResponse res1 = WebhookSetupResponse.getExample();
        WebhookSetupResponse res2 = WebhookSetupResponse.getExample();
        
        // When
        Boolean result = res1.equals(res2);
        
        // Then
        Assert.isTrue(result, 'Expected both WebhookSetupResponse objects to be equal');
    }
    
    @IsTest
    static void testEqualsFalse() {
        // Given
        WebhookSetupResponse res1 = WebhookSetupResponse.getExample();
        WebhookSetupResponse res2 = WebhookSetupResponse.getExample();
        res2.id = 'DIFFERENT_ID';
        
        // When
        Boolean result = res1.equals(res2);
        
        // Then
        Assert.isFalse(result, 'Expected WebhookSetupResponse objects to be different');
    }
    
    @IsTest
    static void testHashCodeSame() {
        // Given
        WebhookSetupResponse res1 = WebhookSetupResponse.getExample();
        WebhookSetupResponse res2 = WebhookSetupResponse.getExample();

        res1.additionalSettings = new WebhookSetupResponse.AdditionalSettings();
        res1.additionalSettings.includeEventCodes = new List<String>{
            AdyenConstants.NOTIFICATION_REQUEST_TYPE_AUTHORISE,
            AdyenConstants.NOTIFICATION_REQUEST_TYPE_CAPTURE
        };
        res1.additionalSettings.excludeEventCodes = new List<String>{
            'REFUND'
        };
        
        res2.additionalSettings = new WebhookSetupResponse.AdditionalSettings();
        res2.additionalSettings.includeEventCodes = new List<String>{
            AdyenConstants.NOTIFICATION_REQUEST_TYPE_AUTHORISE,
            AdyenConstants.NOTIFICATION_REQUEST_TYPE_CAPTURE
        };
        res2.additionalSettings.excludeEventCodes = new List<String>{
            'REFUND'
        };
        
        // When
        Integer hashCode1 = res1.hashCode();
        Integer hashCode2 = res2.hashCode();
        
        // Then
        Assert.areEqual(hashCode1, hashCode2, 'Expected identical objects to have the same hash code');
    }

    @IsTest
    static void testHashCodeDifferent() {
        // Given
        WebhookSetupResponse res1 = WebhookSetupResponse.getExample();
        WebhookSetupResponse res2 = WebhookSetupResponse.getExample();
        res2.id = 'DIFFERENT_ID';
        
        // When
        Integer hashCode1 = res1.hashCode();
        Integer hashCode2 = res2.hashCode();
        
        // Then
        Assert.areNotEqual(hashCode1, hashCode2, 'Expected different objects to have different hash codes');
    }
}
