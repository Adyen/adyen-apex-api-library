/*
* Represents an Adyen Payment Link Creation Request
*/
@NamespaceAccessible
public with sharing class PaymentLinkRequest {

    @NamespaceAccessible
    public Amount amount { get; set; }

    @NamespaceAccessible
    public ApplicationInfo applicationInfo { get; set; }

    @NamespaceAccessible
    public String expiresAt { get; set; }
    
    @NamespaceAccessible
    public String merchantAccount { get; set; }

    @NamespaceAccessible
    public String reference { get; set; }

    @NamespaceAccessible
    public String returnUrl { get; set; }

    @NamespaceAccessible
    public String themeId { get; set; }

    @NamespaceAccessible
    public static PaymentLinkRequest getExample() {
        PaymentLinkRequest paymentLinkRequest = new PaymentLinkRequest();
        paymentLinkRequest.amount = Amount.getExample();
        paymentLinkRequest.applicationInfo = ApplicationInfo.getExample();
        paymentLinkRequest.expiresAt = '2024-12-31T23:59:59+01:00';
        paymentLinkRequest.merchantAccount = 'YOUR_MERCHANT_ACCOUNT';
        paymentLinkRequest.reference = 'YOUR_REFERENCE_NUMBER';
        paymentLinkRequest.returnUrl = 'https://example.com/return';
        paymentLinkRequest.themeId = 'YOUR_THEME_ID';
        return paymentLinkRequest; 
    }

    @NamespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof PaymentLinkRequest) {
            PaymentLinkRequest paymentLinkRequest = (PaymentLinkRequest) obj;
            return this.amount == paymentLinkRequest.amount
                && this.applicationInfo.equals(paymentLinkRequest.applicationInfo)
                && this.expiresAt.equals(paymentLinkRequest.expiresAt)
                && this.merchantAccount.equals(paymentLinkRequest.merchantAccount)
                && this.reference.equals(paymentLinkRequest.reference)
                && this.returnUrl.equals(paymentLinkRequest.returnUrl)
                && this.themeId.equals(paymentLinkRequest.themeId);
        }
        return false;
    }

    @NamespaceAccessible
    public Integer hashCode() {
        List<Object> requestFields = new List<Object>{
            amount, 
            applicationInfo, 
            expiresAt, 
            merchantAccount, 
            reference, 
            returnUrl, 
            themeId
        };
        return computeHashCode(requestFields);
    }

    private Integer computeHashCode(List<Object> requestFields) {
        Integer hash = 43;
        for (Object field : requestFields) {
            hash = (17 * hash) + (field == null ? 0 : System.hashCode(field));
        }
        return hash;
    }
}
