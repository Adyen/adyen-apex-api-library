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

@namespaceAccessible
public with sharing class Redirect {
    /**
    * When the redirect URL must be accessed via POST, use this data to post to the redirect URL.
    * @return data
    */
    @namespaceAccessible
    public Map<String, String> data { get; set; }

    /**
    * The web method that you must use to access the redirect URL.\n\nPossible values: GET, POST.
    */
    @namespaceAccessible
    public enum MethodEnum {
        GET,
        POST
    }

    /**
    * The web method that you must use to access the redirect URL.\n\nPossible values: GET, POST.
    * @return method
    */
    @namespaceAccessible
    public MethodEnum method { get; set; }

    /**
    * The URL, to which you must redirect a shopper to complete a payment.
    * @return url
    */
    @namespaceAccessible
    public String url { get; set; }

    @namespaceAccessible
    public Redirect() {
        data = new Map<String, String>();
    }

    @namespaceAccessible
    public static Redirect getExample() {
        Redirect redirect = new Redirect();
        redirect.data = new Map<String, String>{'key'=>''};
        redirect.method = MethodEnum.GET;
        redirect.url = '';
        return redirect;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof Redirect) {
            Redirect redirect = (Redirect) obj;
            return this.data == redirect.data
                && this.method == redirect.method
                && this.url == redirect.url;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (data == null ? 0 : System.hashCode(data));
        hashCode = (17 * hashCode) + (method == null ? 0 : System.hashCode(method));
        hashCode = (17 * hashCode) + (url == null ? 0 : System.hashCode(url));
        return hashCode;
    }
}