@NamespaceAccessible
public with sharing class WebhookSetupRequest {
    
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
    public AdditionalSettings additionalSettings { get; set; }
    
    @NamespaceAccessible
    public String encryptionProtocol { get; set; }
    
    @NamespaceAccessible
    public String filterMerchantAccountType { get; set; }
    
    @NamespaceAccessible
    public List<String> filterMerchantAccounts { get; set; }
    
    @NamespaceAccessible
    public Boolean equals(Object obj) {
        if (obj == null || !(obj instanceof WebhookSetupRequest)) return false;

        WebhookSetupRequest other = (WebhookSetupRequest) obj;
        return this.url == other.url
            && this.description == other.description
            && this.active == other.active
            && this.communicationFormat == other.communicationFormat
            && this.type == other.type
            && this.encryptionProtocol == other.encryptionProtocol
            && this.filterMerchantAccountType == other.filterMerchantAccountType
            && (this.filterMerchantAccounts != null ? this.filterMerchantAccounts.equals(other.filterMerchantAccounts) : other.filterMerchantAccounts == null)
            && (this.additionalSettings != null ? this.additionalSettings.equals(other.additionalSettings) : other.additionalSettings == null);
    }
    
    @NamespaceAccessible
    public Integer hashCode() {
        List<Object> requestFields = new List<Object>{
            url,
            description,
            active,
            communicationFormat,
            type,
            encryptionProtocol,
            filterMerchantAccountType,
            filterMerchantAccounts,
            additionalSettings
        };
        return ApiLibUtils.computeHashCode(requestFields);
    }
    
    @NamespaceAccessible
    public static WebhookSetupRequest getExample() {
        
        WebhookSetupRequest example = new WebhookSetupRequest();
        example.url = 'https://example.com/webhook';
        example.active = true;
        example.communicationFormat = 'json';
        example.type = 'standard';
        example.encryptionProtocol = 'TLSv1.3';
        example.description = 'Webhook for payment notifications';
        example.filterMerchantAccountType = 'includeAccounts';
        example.filterMerchantAccounts = new List<String>{'TestMerchantAccount'};
        example.additionalSettings  = new AdditionalSettings();
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

        public Boolean equals(Object obj) {
            if (obj == null || !(obj instanceof AdditionalSettings)) return false;
            AdditionalSettings other = (AdditionalSettings) obj;
            return (this.includeEventCodes != null
                ? this.includeEventCodes.equals(other.includeEventCodes)
                : other.includeEventCodes == null);
        }

        public Integer hashCode() {
            return ApiLibUtils.computeHashCode(new List<Object>{ includeEventCodes });
        }
    }

}