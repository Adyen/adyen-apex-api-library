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
public with sharing class InputDetail {
    /**
    * Configuration parameters for the required input.
    * @return configuration
    */
    @namespaceAccessible
    public Map<String, String> configuration { get; set; }

    /**
    * Input details can also be provided recursively.
    * @return details
    */
    @namespaceAccessible
    public List<SubInputDetail> details { get; set; }

    /**
    * Input details can also be provided recursively (deprecated).
    * @return inputDetails
    */
    @namespaceAccessible
    public List<SubInputDetail> inputDetails { get; set; }

    /**
    * In case of a select, the URL from which to query the items.
    * @return itemSearchUrl
    */
    @namespaceAccessible
    public String itemSearchUrl { get; set; }

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
    * True if this input value is optional.
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
    public InputDetail() {
        configuration = new Map<String, String>();
        details = new List<SubInputDetail>();
        inputDetails = new List<SubInputDetail>();
        items = new List<Item>();
    }

    @namespaceAccessible
    public static InputDetail getExample() {
        InputDetail inputDetail = new InputDetail();
        inputDetail.configuration = new Map<String, String>{'key'=>''};
        inputDetail.details = new List<SubInputDetail>{SubInputDetail.getExample()};
        inputDetail.inputDetails = new List<SubInputDetail>{SubInputDetail.getExample()};
        inputDetail.itemSearchUrl = '';
        inputDetail.items = new List<Item>{Item.getExample()};
        inputDetail.key = '';
        inputDetail.optional = true;
        inputDetail.type = '';
        inputDetail.value = '';
        return inputDetail;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof InputDetail) {
            InputDetail inputDetail = (InputDetail) obj;
            return this.configuration == inputDetail.configuration
                && this.details == inputDetail.details
                && this.inputDetails == inputDetail.inputDetails
                && this.itemSearchUrl == inputDetail.itemSearchUrl
                && this.items == inputDetail.items
                && this.key == inputDetail.key
                && this.optional == inputDetail.optional
                && this.type == inputDetail.type
                && this.value == inputDetail.value;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (configuration == null ? 0 : System.hashCode(configuration));
        hashCode = (17 * hashCode) + (details == null ? 0 : System.hashCode(details));
        hashCode = (17 * hashCode) + (inputDetails == null ? 0 : System.hashCode(inputDetails));
        hashCode = (17 * hashCode) + (itemSearchUrl == null ? 0 : System.hashCode(itemSearchUrl));
        hashCode = (17 * hashCode) + (items == null ? 0 : System.hashCode(items));
        hashCode = (17 * hashCode) + (key == null ? 0 : System.hashCode(key));
        hashCode = (17 * hashCode) + (optional == null ? 0 : System.hashCode(optional));
        hashCode = (17 * hashCode) + (type == null ? 0 : System.hashCode(type));
        hashCode = (17 * hashCode) + (value == null ? 0 : System.hashCode(value));
        return hashCode;
    }
}