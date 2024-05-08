/*
* Adyen Checkout API
* Adyen Checkout API provides a simple and flexible way to initiate and authorise online payments.
* You can use the same integration for payments made with cards (including 3D Secure), mobile wallets, and local payment methods (for example, iDEAL and Sofort).
* This API reference provides information on available endpoints and how to interact with them. To learn more about the API, visit [Checkout documentation](https://docs.adyen.com/checkout).\n\n## Authentication\nEach request to the Checkout API must be signed with an API key. For this, obtain an API Key from your Customer Area, as described in [How to get the API key](https://docs.adyen.com/user-management/how-to-get-the-api-key). Then set this key to the `X-API-Key` header value, for example:\n\n```\ncurl\n-H "Content-Type: application/json" \\n-H "X-API-Key: Your_Checkout_API_key" \\n...\n```\nNote that when going live, you need to generate a new API Key to access the [live endpoints](https://docs.adyen.com/development-resources/live-endpoints).\n\n## Versioning\nCheckout API supports versioning of its endpoints through a version suffix in the endpoint URL. This suffix has the following format: "vXX", where XX is the version number.\n\nFor example:\n```\nhttps://checkout-test.adyen.com/v64/payments\n```
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/

@NamespaceAccessible
public with sharing class CheckoutPaymentsAction {
    /**
    * When the redirect URL must be accessed via POST, use this data to post to the redirect URL.
    */
    @NamespaceAccessible
    public Map<String, String> data { get; set; }

    /**
    * Specifies the HTTP method, for example GET or POST.
    */
    @NamespaceAccessible
    public String method { get; set; }

    /**
    * When non-empty, contains a value that you must submit to the `/payments/details` endpoint. In some cases, required for polling.
    */
    @NamespaceAccessible
    public String paymentData { get; set; }

    /**
    * Specifies the payment method.
    */
    @NamespaceAccessible
    public String paymentMethodType { get; set; }

    /**
    * Specifies the token of the action.
    */
    @NamespaceAccessible
    public String token { get; set; }

    /**
    * Specifies the type of the action.
    */
    @NamespaceAccessible
    public String type { get; set; }

    /**
    * Specifies the URL to redirect to.
    */
    @NamespaceAccessible
    public String url { get; set; }

    /**
    * A token needed to authorise a payment.
    */
    @NamespaceAccessible
    public String authorisationToken { get; set; }

    /**
    * A subtype of the token.
    */
    @NamespaceAccessible
    public String subtype { get; set; }

    @NamespaceAccessible
    public CheckoutPaymentsAction() {
        data = new Map<String, String>();
    }

    @NamespaceAccessible
    public static CheckoutPaymentsAction getExample() {
        CheckoutPaymentsAction checkoutPaymentsAction = new CheckoutPaymentsAction();
        checkoutPaymentsAction.data = new Map<String, String>{'key'=>''};
        checkoutPaymentsAction.method = '';
        checkoutPaymentsAction.paymentData = '';
        checkoutPaymentsAction.paymentMethodType = '';
        checkoutPaymentsAction.type = '';
        checkoutPaymentsAction.url = '';
        checkoutPaymentsAction.authorisationToken = '';
        checkoutPaymentsAction.token = '';
        checkoutPaymentsAction.subtype = '';
        return checkoutPaymentsAction;
    }

    @NamespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof CheckoutPaymentsAction) {
            CheckoutPaymentsAction checkoutRedirectAction = (CheckoutPaymentsAction) obj;
            return this.data == checkoutRedirectAction.data
                && this.method == checkoutRedirectAction.method
                && this.paymentData == checkoutRedirectAction.paymentData
                && this.paymentMethodType == checkoutRedirectAction.paymentMethodType
                && this.type == checkoutRedirectAction.type
                && this.url == checkoutRedirectAction.url
                && this.token == checkoutRedirectAction.token
                && this.authorisationToken == checkoutRedirectAction.authorisationToken
                && this.subtype == checkoutRedirectAction.subtype;
        }
        return false;
    }

    @NamespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (data == null ? 0 : System.hashCode(data));
        hashCode = (17 * hashCode) + (method == null ? 0 : System.hashCode(method));
        hashCode = (17 * hashCode) + (paymentData == null ? 0 : System.hashCode(paymentData));
        hashCode = (17 * hashCode) + (paymentMethodType == null ? 0 : System.hashCode(paymentMethodType));
        hashCode = (17 * hashCode) + (type == null ? 0 : System.hashCode(type));
        hashCode = (17 * hashCode) + (url == null ? 0 : System.hashCode(url));
        hashCode = (17 * hashCode) + (subtype == null ? 0 : System.hashCode(subtype));
        hashCode = (17 * hashCode) + (authorisationToken == null ? 0 : System.hashCode(authorisationToken));
        hashCode = (17 * hashCode) + (token == null ? 0 : System.hashCode(token));
        return hashCode;
    }
}