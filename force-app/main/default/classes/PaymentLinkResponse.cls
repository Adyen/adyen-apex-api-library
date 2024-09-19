/*
* Represents an Adyen Payment Link Creation Response
*/
@NamespaceAccessible
public with sharing class PaymentLinkResponse {

    @NamespaceAccessible
    public Amount amount { get; set; }

    @NamespaceAccessible
    public ApplicationInfo applicationInfo { get; set; }

    @NamespaceAccessible
    public String expiresAt { get; set; }

    @NamespaceAccessible
    public String id { get; set; }
    
    @NamespaceAccessible
    public String merchantAccount { get; set; }

    @NamespaceAccessible
    public String reference { get; set; }

    @NamespaceAccessible
    public String returnUrl { get; set; }

    @NamespaceAccessible
    public String status { get; set; }

    @NamespaceAccessible
    public String themeId { get; set; }

    @NamespaceAccessible
    public String url { get; set; }

    @NamespaceAccessible
    public static PaymentLinkResponse getExample() {
        PaymentLinkResponse paymentLinkResponse = new PaymentLinkResponse();
        paymentLinkResponse.amount = Amount.getExample();
        paymentLinkResponse.applicationInfo = ApplicationInfo.getExample();
        paymentLinkResponse.expiresAt = '2024-12-31T23:59:59+01:00';
        paymentLinkResponse.id = 'PL1234567890123ABC1';
        paymentLinkResponse.merchantAccount = 'YOUR_MERCHANT_ACCOUNT';
        paymentLinkResponse.reference = 'YOUR_REFERENCE_NUMBER';
        paymentLinkResponse.returnUrl = 'https://example.com/return';
        paymentLinkResponse.status = 'active';
        paymentLinkResponse.themeId = 'YOUR_THEME_ID';
        paymentLinkResponse.url = 'https://test.adyen.link/PL1234567890123ABC1';
        return paymentLinkResponse; 
    }
}
