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
public without sharing class PaymentsRequest {
    /**
    * Get additionalData
    * @return additionalData
    */
    @namespaceAccessible
    public Map<String, String> additionalData { get; set; }

    /**
    * Get amount
    * @return amount
    */
    @namespaceAccessible
    public Amount amount { get; set; }

    /**
    * Get applicationInfo
    * @return applicationInfo
    */
    @namespaceAccessible
    public ApplicationInfo applicationInfo { get; set; }

    /**
    * Get billingAddress
    * @return billingAddress
    */
    @namespaceAccessible
    public Address billingAddress { get; set; }

    /**
    * Get browserInfo
    * @return browserInfo
    */
    @namespaceAccessible
    public BrowserInfo browserInfo { get; set; }

    /**
    * Get card
    * @return card
    */
    @namespaceAccessible
    public Card card { get; set; }

    /**
    * Get cardDetails
    * @return cardDetails
    */
    @namespaceAccessible
    public CardDetails cardDetails { get; set; }

    /**
    * Get channel
    * @return channel
    */
    @namespaceAccessible
    public String channel { get; set; }

    /**
    * The shopper\'s date of birth.\n\nFormat [ISO-8601](https://www.w3.org/TR/NOTE-datetime): YYYY-MM-DD
    * @return dateOfBirth
    */
    @namespaceAccessible
    public Datetime dateOfBirth { get; set; }

    /**
    * Get deliveryAddress
    * @return deliveryAddress
    */
    @namespaceAccessible
    public Address deliveryAddress { get; set; }

    /**
    * A string containing the shopper\'s device fingerprint. For more information, refer to [Device fingerprinting](https://docs.adyen.com/risk-management/device-fingerprinting).
    * @return deviceFingerprint
    */
    @namespaceAccessible
    public String deviceFingerprint { get; set; }

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
    * Get origin
    * @return origin
    */
    @namespaceAccessible
    public String origin { get; set; }

    /**
    * Defines a recurring payment type.\nAllowed values:\n* `Subscription` – A transaction for a fixed or variable amount, which follows a fixed schedule.\n* `CardOnFile` – With a card-on-file (CoF) transaction, card details are stored to enable one-click or omnichannel journeys, or simply to streamline the checkout process. Any subscription not following a fixed schedule is also considered a card-on-file transaction.\n* `UnscheduledCardOnFile` – An unscheduled card-on-file (UCoF) transaction is a transaction that occurs on a non-fixed schedule and/or have variable amounts. For example, automatic top-ups when a cardholder\'s balance drops below a certain amount.\n
    */
    @namespaceAccessible
    public enum RecurringProcessingModelEnum {
        CardOnFile,
        Subscription,
        UnscheduledCardOnFile
    }

    /**
    * Defines a recurring payment type.\nAllowed values:\n* `Subscription` – A transaction for a fixed or variable amount, which follows a fixed schedule.\n* `CardOnFile` – With a card-on-file (CoF) transaction, card details are stored to enable one-click or omnichannel journeys, or simply to streamline the checkout process. Any subscription not following a fixed schedule is also considered a card-on-file transaction.\n* `UnscheduledCardOnFile` – An unscheduled card-on-file (UCoF) transaction is a transaction that occurs on a non-fixed schedule and/or have variable amounts. For example, automatic top-ups when a cardholder\'s balance drops below a certain amount.\n
    * @return recurringProcessingModel
    */
    @namespaceAccessible
    public RecurringProcessingModelEnum recurringProcessingModel { get; set; }

    /**
    * The reference to uniquely identify a payment. This reference is used in all communication with you about the payment status. We recommend using a unique value per payment; however, it is not a requirement.\nIf you need to provide multiple references for a transaction, separate them with hyphens ("-").\nMaximum length: 80 characters.
    * @return reference
    */
    @namespaceAccessible
    public String reference { get; set; }

    /**
    * The URL to return to in case of a redirection.\nThe format depends on the channel. This URL can have a maximum of 1024 characters.\n* For web, include the protocol `http://` or `https://`. You can also include your own additional query parameters, for example, shopper ID or order reference number.\nExample: `https://your-company.com/checkout?shopperOrder=12xy`\n* For iOS, use the custom URL for your app. To know more about setting custom URL schemes, refer to the [Apple Developer documentation](https://developer.apple.com/documentation/uikit/inter-process_communication/allowing_apps_and_websites_to_link_to_your_content/defining_a_custom_url_scheme_for_your_app).\nExample: `my-app://`\n* For Android, use a custom URL handled by an Activity on your app. You can configure it with an [intent filter](https://developer.android.com/guide/components/intents-filters).\nExample: `my-app://your.package.name`
    * @return returnUrl
    */
    @namespaceAccessible
    public String returnUrl { get; set; }

    /**
    * Get riskData
    * @return riskData
    */
    @namespaceAccessible
    public RiskData riskData { get; set; }

    /**
    * Some payment methods require defining a value for this field to specify how to process the transaction.\n\nFor the Bancontact payment method, it can be set to:\n* `maestro` (default), to be processed like a Maestro card, or\n* `bcmc`, to be processed like a Bancontact card.
    * @return selectedBrand
    */
    @namespaceAccessible
    public String selectedBrand { get; set; }

    /**
    * The `recurringDetailReference` you want to use for this payment. The value `LATEST` can be used to select the most recently stored recurring detail.
    * @return selectedRecurringDetailReference
    */
    @namespaceAccessible
    public String selectedRecurringDetailReference { get; set; }

    /**
    * The shopper\'s email address. We recommend that you provide this data, as it is used in velocity fraud checks.\n> For 3D Secure 2 transactions, schemes require the `shopperEmail` for both `deviceChannel` **browser** and **app**.
    * @return shopperEmail
    */
    @namespaceAccessible
    public String shopperEmail { get; set; }

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
    * The combination of a language code and a country code to specify the language to be used in the payment.
    * @return shopperLocale
    */
    @namespaceAccessible
    public String shopperLocale { get; set; }

    /**
    * Get shopperName
    * @return shopperName
    */
    @namespaceAccessible
    public Name shopperName { get; set; }

    /**
    * The shopper\'s reference to uniquely identify this shopper (e.g. user ID or account ID).\n> This field is required for recurring payments.
    * @return shopperReference
    */
    @namespaceAccessible
    public String shopperReference { get; set; }

    /**
    * When this is set to **true** and the `shopperReference` is provided, the payment details will be stored.
    * @return storePaymentMethod
    */
    @namespaceAccessible
    public Boolean storePaymentMethod { get; set; }

    @namespaceAccessible
    public PaymentsRequest() {
    }

    @namespaceAccessible
    public static PaymentsRequest getExample() {
        PaymentsRequest paymentsRequest = new PaymentsRequest();
        paymentsRequest.amount = Amount.getExample();
        paymentsRequest.additionalData = new Map<String, String>();
        paymentsRequest.applicationInfo = ApplicationInfo.getExample();
        paymentsRequest.billingAddress = Address.getExample();
        paymentsRequest.browserInfo = BrowserInfo.getExample();
        paymentsRequest.card = Card.getExample();
        paymentsRequest.cardDetails = CardDetails.getExample();
        paymentsRequest.channel = '';
        paymentsRequest.deliveryAddress = Address.getExample();
        paymentsRequest.deviceFingerprint = '';
        paymentsRequest.merchantAccount = '';
        paymentsRequest.paymentMethod = CardDetails.getExample();
        paymentsRequest.recurringProcessingModel = RecurringProcessingModelEnum.CARDONFILE;
        paymentsRequest.reference = '';
        paymentsRequest.riskData = RiskData.getExample();
        paymentsRequest.selectedBrand = '';
        paymentsRequest.selectedRecurringDetailReference = '';
        paymentsRequest.shopperEmail = '';
        paymentsRequest.shopperIP = '';
        paymentsRequest.shopperInteraction = ShopperInteractionEnum.ECOMMERCE;
        paymentsRequest.shopperLocale = '';
        paymentsRequest.shopperName = Name.getExample();
        paymentsRequest.shopperReference = '';
        paymentsRequest.storePaymentMethod = false;
        return paymentsRequest;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof PaymentsRequest) {
            PaymentsRequest paymentsRequest = (PaymentsRequest) obj;
            return this.amount == paymentsRequest.amount
                && this.additionalData == paymentsRequest.additionalData
                && this.applicationInfo == paymentsRequest.applicationInfo
                && this.billingAddress == paymentsRequest.billingAddress
                && this.browserInfo == paymentsRequest.browserInfo
                && this.card == paymentsRequest.card
                && this.cardDetails == paymentsRequest.cardDetails
                && this.channel == paymentsRequest.channel
                && this.deliveryAddress == paymentsRequest.deliveryAddress
                && this.deviceFingerprint == paymentsRequest.deviceFingerprint
                && this.merchantAccount == paymentsRequest.merchantAccount
                && this.paymentMethod == paymentsRequest.paymentMethod
                && this.recurringProcessingModel == paymentsRequest.recurringProcessingModel
                && this.reference == paymentsRequest.reference
                && this.riskData == paymentsRequest.riskData
                && this.selectedBrand == paymentsRequest.selectedBrand
                && this.selectedRecurringDetailReference == paymentsRequest.selectedRecurringDetailReference
                && this.shopperEmail == paymentsRequest.shopperEmail
                && this.shopperIP == paymentsRequest.shopperIP
                && this.shopperInteraction == paymentsRequest.shopperInteraction
                && this.shopperLocale == paymentsRequest.shopperLocale
                && this.shopperName == paymentsRequest.shopperName
                && this.shopperReference == paymentsRequest.shopperReference
                && this.storePaymentMethod == paymentsRequest.storePaymentMethod;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (additionalData == null ? 0 : System.hashCode(additionalData));
        hashCode = (17 * hashCode) + (amount == null ? 0 : System.hashCode(amount));
        hashCode = (17 * hashCode) + (applicationInfo == null ? 0 : System.hashCode(applicationInfo));
        hashCode = (17 * hashCode) + (billingAddress == null ? 0 : System.hashCode(billingAddress));
        hashCode = (17 * hashCode) + (browserInfo == null ? 0 : System.hashCode(browserInfo));
        hashCode = (17 * hashCode) + (card == null ? 0 : System.hashCode(card));
        hashCode = (17 * hashCode) + (cardDetails == null ? 0 : System.hashCode(cardDetails));
        hashCode = (17 * hashCode) + (channel == null ? 0 : System.hashCode(channel));
        hashCode = (17 * hashCode) + (deliveryAddress == null ? 0 : System.hashCode(deliveryAddress));
        hashCode = (17 * hashCode) + (deviceFingerprint == null ? 0 : System.hashCode(deviceFingerprint));
        hashCode = (17 * hashCode) + (merchantAccount == null ? 0 : System.hashCode(merchantAccount));
        hashCode = (17 * hashCode) + (recurringProcessingModel == null ? 0 : System.hashCode(recurringProcessingModel));
        hashCode = (17 * hashCode) + (reference == null ? 0 : System.hashCode(reference));
        hashCode = (17 * hashCode) + (riskData == null ? 0 : System.hashCode(riskData));
        hashCode = (17 * hashCode) + (paymentMethod == null ? 0 : System.hashCode(paymentMethod));
        hashCode = (17 * hashCode) + (selectedBrand == null ? 0 : System.hashCode(selectedBrand));
        hashCode = (17 * hashCode) + (selectedRecurringDetailReference == null ? 0 : System.hashCode(selectedRecurringDetailReference));
        hashCode = (17 * hashCode) + (shopperEmail == null ? 0 : System.hashCode(shopperEmail));
        hashCode = (17 * hashCode) + (shopperIP == null ? 0 : System.hashCode(shopperIP));
        hashCode = (17 * hashCode) + (shopperInteraction == null ? 0 : System.hashCode(shopperInteraction));
        hashCode = (17 * hashCode) + (shopperLocale == null ? 0 : System.hashCode(shopperLocale));
        hashCode = (17 * hashCode) + (shopperName == null ? 0 : System.hashCode(shopperName));
        hashCode = (17 * hashCode) + (shopperReference == null ? 0 : System.hashCode(shopperReference));
        hashCode = (17 * hashCode) + (storePaymentMethod == null ? 0 : System.hashCode(storePaymentMethod));
        return hashCode;
    }
}