/*
* Represents an Adyen Payment Link Creation Request
*/
@NamespaceAccessible
public with sharing class PaymentLinkRequest {

    @NamespaceAccessible
    public List<String> allowedPaymentMethods { get; set; }

    @NamespaceAccessible
    public Amount amount { get; set; }

    @NamespaceAccessible
    public ApplicationInfo applicationInfo { get; set; }

    @NamespaceAccessible
    public Address billingAddress { get; set; }

    @NamespaceAccessible
    public List<String> blockedPaymentMethods { get; set; }

    @NamespaceAccessible
    public Integer captureDelayHours { get; set; }

    @NamespaceAccessible
    public String countryCode { get; set; }

    @NamespaceAccessible
    public String dateOfBirth { get; set; }

    @NamespaceAccessible
    public String deliverAt { get; set; }

    @NamespaceAccessible
    public Address deliveryAddress { get; set; }

    @NamespaceAccessible
    public String description { get; set; }

    @NamespaceAccessible
    public String expiresAt { get; set; }

    @NamespaceAccessible
    public List<LineItem> lineItems { get; set; }

    @NamespaceAccessible
    public Boolean manualCapture { get; set; }

    @NamespaceAccessible
    public String mcc { get; set; }
    
    @NamespaceAccessible
    public String merchantAccount { get; set; }

    @NamespaceAccessible
    public String merchantOrderReference { get; set; }

    @NamespaceAccessible
    public String recurringProcessingModel { get; set; }

    @NamespaceAccessible
    public String reference { get; set; }

    @NamespaceAccessible
    public List<String> requiredShopperFields { get; set; }

    @NamespaceAccessible
    public String returnUrl { get; set; }

    @NamespaceAccessible
    public Boolean reusable { get; set; }

    @NamespaceAccessible
    public RiskData riskData { get; set; }

    @NamespaceAccessible
    public String shopperEmail { get; set; }

    @NamespaceAccessible
    public String shopperLocale { get; set; }

    @NamespaceAccessible
    public Name shopperName { get; set; }

    @NamespaceAccessible
    public String shopperReference { get; set; }

    @NamespaceAccessible
    public String shopperStatement { get; set; }

    @NamespaceAccessible
    public Boolean showRemovePaymentMethodButton { get; set; }

    @NamespaceAccessible
    public String socialSecurityNumber { get; set; }

    @NamespaceAccessible
    public Boolean splitCardFundingSources { get; set; }

    @NamespaceAccessible
    public String store { get; set; }

    @NamespaceAccessible
    public String storePaymentMethodMode { get; set; }

    @NamespaceAccessible
    public String telephoneNumber { get; set; }

    @NamespaceAccessible
    public String themeId { get; set; }

    @NamespaceAccessible
    public static PaymentLinkRequest getExample() {
        PaymentLinkRequest paymentLinkRequest = new PaymentLinkRequest();
        paymentLinkRequest.allowedPaymentMethods = new List<String>{'ideal'};
        paymentLinkRequest.amount = Amount.getExample();
        paymentLinkRequest.applicationInfo = ApplicationInfo.getExample();
        paymentLinkRequest.billingAddress = Address.getExample();
        paymentLinkRequest.blockedPaymentMethods = new List<String>{'svs'} ;
        paymentLinkRequest.captureDelayHours = 12;
        paymentLinkRequest.countryCode = 'NL';
        paymentLinkRequest.dateOfBirth = '1990-08-28';
        paymentLinkRequest.deliverAt = '2024-12-18T10:15:30+01:00';
        paymentLinkRequest.deliveryAddress = Address.getExample();
        paymentLinkRequest.description = 'Blue shoes';
        paymentLinkRequest.expiresAt = '2024-12-31T23:59:59+01:00';
        paymentLinkRequest.lineItems = null;
        paymentLinkRequest.manualCapture = true;
        paymentLinkRequest.mcc = '4121';
        paymentLinkRequest.merchantAccount = 'YOUR_MERCHANT_ACCOUNT';
        paymentLinkRequest.merchantOrderReference = 'ABC2';
        paymentLinkRequest.recurringProcessingModel = 'CardOnFile';
        paymentLinkRequest.reference = 'YOUR_REFERENCE_NUMBER';
        paymentLinkRequest.requiredShopperFields = new List<String>{'billingAddress'};
        paymentLinkRequest.returnUrl = 'https://example.com/return';
        paymentLinkRequest.reusable = false;
        paymentLinkRequest.riskData = RiskData.getExample();
        paymentLinkRequest.shopperEmail = 'domain@sink.salesforce.com';
        paymentLinkRequest.shopperLocale = 'en-US';
        paymentLinkRequest.shopperName = Name.getExample();
        paymentLinkRequest.shopperReference = 'user123';
        paymentLinkRequest.shopperStatement = 'Amazing Store';
        paymentLinkRequest.showRemovePaymentMethodButton = true;
        paymentLinkRequest.socialSecurityNumber = '123456789';
        paymentLinkRequest.splitCardFundingSources = false;
        paymentLinkRequest.store = 'Store in Amsterdam';
        paymentLinkRequest.storePaymentMethodMode = 'askForConsent';
        paymentLinkRequest.telephoneNumber = '0612412123';
        paymentLinkRequest.themeId = 'YOUR_THEME_ID';
        return paymentLinkRequest; 
    }

    @NamespaceAccessible
    public Boolean equals(Object obj) {
        if (obj == null || !(obj instanceof PaymentLinkRequest)) return false;

        PaymentLinkRequest other = (PaymentLinkRequest) obj;
        return this.allowedPaymentMethods == other.allowedPaymentMethods
            && this.amount == other.amount
            && this.applicationInfo == other.applicationInfo
            && this.billingAddress == other.billingAddress
            && this.blockedPaymentMethods == other.blockedPaymentMethods
            && this.captureDelayHours == other.captureDelayHours
            && this.countryCode == other.countryCode
            && this.dateOfBirth == other.dateOfBirth
            && this.deliverAt == other.deliverAt
            && this.deliveryAddress == other.deliveryAddress
            && this.description == other.description
            && this.expiresAt == other.expiresAt
            && this.lineItems == other.lineItems
            && this.manualCapture == other.manualCapture
            && this.mcc == other.mcc
            && this.merchantAccount == other.merchantAccount
            && this.merchantOrderReference == other.merchantOrderReference
            && this.recurringProcessingModel == other.recurringProcessingModel
            && this.reference == other.reference
            && this.requiredShopperFields == other.requiredShopperFields
            && this.returnUrl == other.returnUrl
            && this.reusable == other.reusable
            && this.riskData == other.riskData
            && this.shopperEmail == other.shopperEmail
            && this.shopperLocale == other.shopperLocale
            && this.shopperName == other.shopperName
            && this.shopperReference == other.shopperReference
            && this.shopperStatement == other.shopperStatement
            && this.showRemovePaymentMethodButton == other.showRemovePaymentMethodButton
            && this.socialSecurityNumber == other.socialSecurityNumber
            && this.splitCardFundingSources == other.splitCardFundingSources
            && this.store == other.store
            && this.storePaymentMethodMode == other.storePaymentMethodMode
            && this.telephoneNumber == other.telephoneNumber
            && this.themeId == other.themeId;
    }

    @NamespaceAccessible
    public Integer hashCode() {
        List<Object> requestFields = new List<Object>{
            allowedPaymentMethods,
            amount,
            applicationInfo,
            billingAddress,
            blockedPaymentMethods,
            captureDelayHours,
            countryCode,
            dateOfBirth,
            deliverAt,
            deliveryAddress,
            description,
            expiresAt,
            lineItems,
            manualCapture,
            mcc,
            merchantAccount,
            merchantOrderReference,
            recurringProcessingModel,
            reference,
            requiredShopperFields,
            returnUrl,
            reusable,
            riskData,
            shopperEmail,
            shopperLocale,
            shopperName,
            shopperReference,
            shopperStatement,
            showRemovePaymentMethodButton,
            socialSecurityNumber,
            splitCardFundingSources,
            store,
            storePaymentMethodMode,
            telephoneNumber,
            themeId
        };
        return computeHashCode(requestFields);
    }

    private static Integer computeHashCode(List<Object> requestFields) {
        Integer hash = 43;
        for (Object field : requestFields) {
            hash = (17 * hash) + (field == null ? 0 : System.hashCode(field));
        }
        return hash;
    }
}
