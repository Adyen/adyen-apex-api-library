/*
* Adyen Payment API
* A set of API endpoints that allow you to initiate, settle, and modify payments on the Adyen payments platform.
* You can use the API to accept card payments (including One-Click and 3D Secure), bank transfers, ewallets, and many other payment methods.
* To learn more about the API, visit [Classic integration](https://docs.adyen.com/classic-integration).\n\n## Authentication\nTo connect to the Payments API, you must use your basic authentication credentials. For this, create your web service user, as described in [How to get the WS user password](https://docs.adyen.com/user-management/how-to-get-the-web-service-ws-user-password). Then use its credentials to authenticate your request, for example:\n\n```\ncurl\n-U "ws@Company.YourCompany":"YourWsPassword" \\n-H "Content-Type: application/json" \\n...\n```\nNote that when going live, you need to generate new web service user credentials to access the [live endpoints](https://docs.adyen.com/development-resources/live-endpoints).\n\n## Versioning\nPayments API supports versioning of its endpoints through a version suffix in the endpoint URL. This suffix has the following format: "vXX", where XX is the version number.\n\nFor example:\n```\nhttps://pal-test.adyen.com/pal/servlet/Payment/v64/authorise\n```
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/

@namespaceAccessible
public without sharing class AuthorisationRequest {
    /**
    * Get amount
    * @return amount
    */
    @namespaceAccessible
    public Amount amount { get; set; }

    /**
    * application info
    * @return applicationInfo
    */
    @namespaceAccessible
    public ApplicationInfo applicationInfo { get; set; }

    /**
    * The merchant account identifier, with which you want to process the transaction.
    * @return merchantAccount
    */
    @namespaceAccessible
    public String merchantAccount { get; set; }

    /**
    * Get card
    * @return card
    */
    @namespaceAccessible
    public PaymentMethodDetails paymentMethod { get; set; }

    /**
    * The reference to uniquely identify a payment. This reference is used in all communication with you about the payment status. We recommend using a unique value per payment; however, it is not a requirement.\nIf you need to provide multiple references for a transaction, separate them with hyphens ("-").\nMaximum length: 80 characters.
    * @return reference
    */
    @namespaceAccessible
    public String reference { get; set; }


    /**
    * The shopper\'s IP address. In general, we recommend that you provide this data, as it is used in a number of risk checks (for instance, number of payment attempts or location-based checks).\n> Required for 3D Secure 2 transactions. This field is also mandatory for some merchants depending on your business model. For more information, [contact Support](https://support.adyen.com/hc/en-us/requests/new).
    * @return shopperIP
    */
    @namespaceAccessible
    public String shopperIP { get; set; }

    /**
    * Specifies the sales channel, through which the shopper gives their card details, and whether the shopper is a returning customer.\nFor the web service API, Adyen assumes Ecommerce shopper interaction by default.\n\nThis field has the following possible values:\n* `Ecommerce` - Online transactions where the cardholder is present (online). For better authorisation rates, we recommend sending the card security code (CSC) along with the request.\n* `ContAuth` - Card on file and/or subscription transactions, where the cardholder is known to the merchant (returning customer). If the shopper is present (online), you can supply also the CSC to improve authorisation (one-click payment).\n* `Moto` - Mail-order and telephone-order transactions where the shopper is in contact with the merchant via email or telephone.\n* `POS` - Point-of-sale transactions where the shopper is physically present to make a payment using a secure payment terminal.
    */
    @namespaceAccessible
    public enum ShopperInteractionEnum {
        Ecommerce,
        ContAuth,
        Moto,
        POS
    }

    /**
    * Specifies the sales channel, through which the shopper gives their card details, and whether the shopper is a returning customer.\nFor the web service API, Adyen assumes Ecommerce shopper interaction by default.\n\nThis field has the following possible values:\n* `Ecommerce` - Online transactions where the cardholder is present (online). For better authorisation rates, we recommend sending the card security code (CSC) along with the request.\n* `ContAuth` - Card on file and/or subscription transactions, where the cardholder is known to the merchant (returning customer). If the shopper is present (online), you can supply also the CSC to improve authorisation (one-click payment).\n* `Moto` - Mail-order and telephone-order transactions where the shopper is in contact with the merchant via email or telephone.\n* `POS` - Point-of-sale transactions where the shopper is physically present to make a payment using a secure payment terminal.
    * @return shopperInteraction
    */
    @namespaceAccessible
    public ShopperInteractionEnum shopperInteraction { get; set; }

    /**
    * The shopper\'s reference to uniquely identify this shopper (e.g. user ID or account ID).\n> This field is required for recurring payments.
    * @return shopperReference
    */
    @namespaceAccessible
    public String shopperReference { get; set; }


    @namespaceAccessible
    public AuthorisationRequest() {
    }

    @namespaceAccessible
    public static AuthorisationRequest getExample() {
        AuthorisationRequest authRequest = new AuthorisationRequest();
        authRequest.amount = Amount.getExample();
        authRequest.merchantAccount = '';
        authRequest.paymentMethod = CardDetails.getExample();
        authRequest.reference = '';
        authRequest.shopperIP = '';
        authRequest.shopperInteraction = ShopperInteractionEnum.ECOMMERCE;
        return authRequest;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof AuthorisationRequest) {
            AuthorisationRequest authRequest = (AuthorisationRequest) obj;
            return this.amount == authRequest.amount
                && this.merchantAccount == authRequest.merchantAccount
                && this.paymentMethod == authRequest.paymentMethod
                && this.reference == authRequest.reference
                && this.shopperIP == authRequest.shopperIP
                && this.shopperInteraction == authRequest.shopperInteraction
                && this.shopperReference == authRequest.shopperReference;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (amount == null ? 0 : System.hashCode(amount));
        hashCode = (17 * hashCode) + (merchantAccount == null ? 0 : System.hashCode(merchantAccount));
        hashCode = (17 * hashCode) + (reference == null ? 0 : System.hashCode(reference));
        hashCode = (17 * hashCode) + (paymentMethod == null ? 0 : System.hashCode(paymentMethod));
        hashCode = (17 * hashCode) + (shopperIP == null ? 0 : System.hashCode(shopperIP));
        hashCode = (17 * hashCode) + (shopperInteraction == null ? 0 : System.hashCode(shopperInteraction));
        return hashCode;
    }
}