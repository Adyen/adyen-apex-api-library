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
        paymentLinkRequest.reference = 'YOUR_ORDER_NUMBER';
        paymentLinkRequest.returnUrl = 'https://example.com/return';
        paymentLinkRequest.themeId = 'YOUR_THEME_ID';
        return paymentLinkRequest; 
    }
}
