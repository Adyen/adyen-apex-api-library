@NamespaceAccessible
public with sharing class HMACValidator {
    private static final String HMAC_SHA256_ALGORITHM = 'HmacSHA256';
    private static final String DATA_SEPARATOR = ':';
    private NotificationRequestItem notificationRequestItem;
    private String hmacKey;

    @NamespaceAccessible
    public HMACValidator() {}

    @NamespaceAccessible
    public HMACValidator(NotificationRequestItem notificationRequestItem, String hmacKey) {
        if (notificationRequestItem == null) {
            throw new HmacValidationException('Invalid notification request item');
        }

        if (String.isBlank(hmacKey)) {
            throw new HmacValidationException('Invalid HMAC Key');
        }

        this.notificationRequestItem = notificationRequestItem;
        this.hmacKey = hmacKey;
    }

    @NamespaceAccessible
    public class HmacValidationException extends Exception {}

    @TestVisible
    private String calculateHMAC() {
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

        Blob binaryKey = EncodingUtil.convertFromHex(hmacKey); // Convert hexadecimal string to binary

        Blob hmac = Crypto.generateMac(HMAC_SHA256_ALGORITHM, binaryPayload, binaryKey);
        String hmacBase64 = EncodingUtil.base64Encode(hmac);
        return hmacBase64;
    }

    // Prevents timing attacks
    @TestVisible
    private static Boolean compareHMAC(String calculatedSignature, String merchantSignature) {
        if (calculatedSignature.length() != merchantSignature.length()) {
            return false;
        }

        Integer bitwiseComparison = 0;
        for (Integer i = 0; i < calculatedSignature.length(); i++) {
            bitwiseComparison |= calculatedSignature.charAt(i) ^ merchantSignature.charAt(i);
        }

        return bitwiseComparison == 0;
    }

    @NamespaceAccessible
    public Boolean validateHMAC() {
        String merchantSignature = notificationRequestItem.additionalData?.get('hmacSignature');
        if (String.isBlank(merchantSignature)) {
            throw new HmacValidationException('Missing notification data');
        }
        String calculatedSignature = calculateHMAC();

        return compareHMAC(calculatedSignature, merchantSignature);
    }

    @NamespaceAccessible
    public Boolean validateHMAC(NotificationRequestItem notificationRequestItem, String hmacKey) {
        this.notificationRequestItem = notificationRequestItem;
        this.hmacKey = hmacKey;
        return validateHMAC();
    }
}