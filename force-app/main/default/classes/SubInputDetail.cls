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
public with sharing class SubInputDetail {
    /**
    * Configuration parameters for the required input.
    * @return configuration
    */
    @namespaceAccessible
    public Map<String, String> configuration { get; set; }

    /**
    * In case of a select, the items to choose from.
    * @return items
    */
    @namespaceAccessible
    public List<Item> items { get; set; }

    /**
    * The value to provide in the result.
    * @return key
    */
    @namespaceAccessible
    public String key { get; set; }

    /**
    * True if this input is optional to provide.
    * @return optional
    */
    @namespaceAccessible
    public Boolean optional { get; set; }

    /**
    * The type of the required input.
    * @return type
    */
    @namespaceAccessible
    public String type { get; set; }

    /**
    * The value can be pre-filled, if available.
    * @return value
    */
    @namespaceAccessible
    public String value { get; set; }

    @namespaceAccessible
    public SubInputDetail() {
        configuration = new Map<String, String>();
        items = new List<Item>();
    }

    @namespaceAccessible
    public static SubInputDetail getExample() {
        SubInputDetail subInputDetail = new SubInputDetail();
        subInputDetail.configuration = new Map<String, String>{'key'=>''};
        subInputDetail.items = new List<Item>{Item.getExample()};
        subInputDetail.key = '';
        subInputDetail.optional = true;
        subInputDetail.type = '';
        subInputDetail.value = '';
        return subInputDetail;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof SubInputDetail) {
            SubInputDetail subInputDetail = (SubInputDetail) obj;
            return this.configuration == subInputDetail.configuration
                && this.items == subInputDetail.items
                && this.key == subInputDetail.key
                && this.optional == subInputDetail.optional
                && this.type == subInputDetail.type
                && this.value == subInputDetail.value;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (configuration == null ? 0 : System.hashCode(configuration));
        hashCode = (17 * hashCode) + (items == null ? 0 : System.hashCode(items));
        hashCode = (17 * hashCode) + (key == null ? 0 : System.hashCode(key));
        hashCode = (17 * hashCode) + (optional == null ? 0 : System.hashCode(optional));
        hashCode = (17 * hashCode) + (type == null ? 0 : System.hashCode(type));
        hashCode = (17 * hashCode) + (value == null ? 0 : System.hashCode(value));
        return hashCode;
    }
}