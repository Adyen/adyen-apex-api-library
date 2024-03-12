@namespaceAccessible
public with sharing class HMACValidator {
    private static final String HMAC_SHA256_ALGORITHM = 'HmacSHA256';
    private static final String DATA_SEPARATOR = ':';

    @TestVisible
    private String calculateHMAC(NotificationRequestItem notificationRequestItem, String key){
        List<Object> payloadParts = new List<Object>{
            notificationRequestItem.pspReference,
            notificationRequestItem.originalReference,
            notificationRequestItem.merchantAccountCode,
            notificationRequestItem.merchantReference,
            notificationRequestItem.amount.value,
            notificationRequestItem.amount.currency_x,
            notificationRequestItem.eventCode,
            notificationRequestItem.success
        };
        
        String payload = String.join(payloadParts, DATA_SEPARATOR);
        Blob binaryPayload = Blob.valueOf(payload); // Convert payload to binary

        Blob binaryKey = EncodingUtil.convertFromHex(key); // Convert hexadecimal string to binary

        Blob hmac = Crypto.generateMac(HMAC_SHA256_ALGORITHM, binaryPayload, binaryKey);
        String hmacBase64 = EncodingUtil.base64Encode(hmac);
        return hmacBase64;
    }

    // Prevents timing attacks
    @TestVisible
    private Boolean compareHMAC(String hmacSignature, String merchantSignature) {
        if (hmacSignature.length() != merchantSignature.length()) {
            return false;
        }
        
        Integer bitwiseComparison = 0;
        for (Integer i = 0; i < hmacSignature.length(); i++) {
            bitwiseComparison |= hmacSignature.charAt(i) ^ merchantSignature.charAt(i);
        }
        
        return bitwiseComparison == 0;
    }
    

   public Boolean validateHMAC(NotificationRequestItem notificationRequestItem, String hmacKey){
        if (notificationRequestItem.additionalData == null || hmacKey == null) {
            throw new AuraHandledException('Missing notification data or key');
        }
        String calculatedSignature = calculateHMAC(notificationRequestItem, hmacKey);
        String hmacSignature = notificationRequestItem.additionalData.get('hmacSignature');

        if (compareHMAC(calculatedSignature, hmacSignature)){
            return true;
        }

        return false;
    }
}