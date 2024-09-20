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

    @NamespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof PaymentLinkResponse) {
            PaymentLinkResponse paymentLinkResponse = (PaymentLinkResponse) obj;
            return this.amount == paymentLinkResponse.amount
                && this.applicationInfo.equals(paymentLinkResponse.applicationInfo)
                && this.expiresAt.equals(paymentLinkResponse.expiresAt)
                && this.merchantAccount.equals(paymentLinkResponse.merchantAccount)
                && this.reference.equals(paymentLinkResponse.reference)
                && this.returnUrl.equals(paymentLinkResponse.returnUrl)
                && this.url.equals(paymentLinkResponse.url)
                && this.status.equals(paymentLinkResponse.status)
                && this.id.equals(paymentLinkResponse.id)
                && this.themeId.equals(paymentLinkResponse.themeId);
        }
        return false;
    }

    @NamespaceAccessible
    public Integer hashCode() {
        List<Object> responseFields = new List<Object>{
            amount, 
            applicationInfo, 
            expiresAt, 
            merchantAccount, 
            reference, 
            returnUrl, 
            themeId,
            url,
            status,
            id
        };
        return computeHashCode(responseFields);
    }

    private Integer computeHashCode(List<Object> responseFields) {
        Integer hash = 43;
        for (Object field : responseFields) {
            hash = (17 * hash) + (field == null ? 0 : System.hashCode(field));
        }
        return hash;
    }
}
