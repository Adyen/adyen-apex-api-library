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
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (amount == null ? 0 : System.hashCode(amount));
        hashCode = (17 * hashCode) + (applicationInfo == null ? 0 : System.hashCode(applicationInfo));
        hashCode = (17 * hashCode) + (expiresAt == null ? 0 : System.hashCode(expiresAt));
        hashCode = (17 * hashCode) + (merchantAccount == null ? 0 : System.hashCode(merchantAccount));
        hashCode = (17 * hashCode) + (reference == null ? 0 : System.hashCode(reference));
        hashCode = (17 * hashCode) + (returnUrl == null ? 0 : System.hashCode(returnUrl));
        hashCode = (17 * hashCode) + (themeId == null ? 0 : System.hashCode(themeId));
        return hashCode;
    }
}
