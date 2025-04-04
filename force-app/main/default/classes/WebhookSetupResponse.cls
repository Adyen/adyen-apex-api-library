@NamespaceAccessible
public with sharing class WebhookSetupResponse {
    
    @NamespaceAccessible
    public String id { get; set; }
    
    @NamespaceAccessible
    public String url { get; set; }
    
    @NamespaceAccessible
    public String description { get; set; }
    
    @NamespaceAccessible
    public Boolean active { get; set; }
    
    @NamespaceAccessible
    public String communicationFormat { get; set; }
    
    @NamespaceAccessible
    public String type { get; set; }
    
    @NamespaceAccessible
    public String encryptionProtocol { get; set; }
    
    @NamespaceAccessible
    public Boolean hasError { get; set; }
    
    @NamespaceAccessible
    public AdditionalSettings additionalSettings { get; set; }
    
    @NamespaceAccessible
    public Boolean equals(Object obj) {
        if (obj == null || !(obj instanceof WebhookSetupResponse)) return false;

        WebhookSetupResponse other = (WebhookSetupResponse) obj;
        return this.id == other.id
            && this.url == other.url
            && this.description == other.description
            && this.active == other.active
            && this.communicationFormat == other.communicationFormat
            && this.type == other.type
            && this.encryptionProtocol == other.encryptionProtocol
            && this.hasError == other.hasError
            && this.additionalSettings.equals(other.additionalSettings);
    }
    
    
    @NamespaceAccessible
    public Integer hashCode() {
        List<Object> responseFields = new List<Object>{
            id,
            url,
            description,
            active,
            communicationFormat,
            type,
            encryptionProtocol,
            hasError,
            additionalSettings != null ? additionalSettings.includeEventCodes : null,
            additionalSettings != null ? additionalSettings.excludeEventCodes : null
        };
        return ApiLibUtils.computeHashCode(responseFields);
    }
    
    @NamespaceAccessible
    public static WebhookSetupResponse getExample() {
        WebhookSetupResponse example = new WebhookSetupResponse();
        example.id = 'WS123456789';
        example.url = 'https://example.com/webhook';
        example.description = 'Webhook for payment notifications';
        example.active = true;
        example.communicationFormat = 'json';
        example.type = 'standard';
        example.encryptionProtocol = 'TLSv1.3';
        example.hasError = false;
        
        example.additionalSettings = new AdditionalSettings();
        example.additionalSettings.includeEventCodes = new List<String>{
            AdyenConstants.NOTIFICATION_REQUEST_TYPE_AUTHORISE,
            AdyenConstants.NOTIFICATION_REQUEST_TYPE_CAPTURE
        };
        
        return example;
    }
    
    @NamespaceAccessible
    public class AdditionalSettings {
        @NamespaceAccessible
        public List<String> includeEventCodes { get; set; }
        
        @NamespaceAccessible
        public List<String> excludeEventCodes { get; set; }

        public Boolean equals(Object obj) {
            if (obj == null || !(obj instanceof AdditionalSettings)) return false;
            AdditionalSettings other = (AdditionalSettings) obj;
            return this.includeEventCodes == other.includeEventCodes
                && this.excludeEventCodes == other.excludeEventCodes;
        }

        public Integer hashCode() {
            return ApiLibUtils.computeHashCode(new List<Object>{ includeEventCodes, excludeEventCodes });
        }
        
    }
    
} 