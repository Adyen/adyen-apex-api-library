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
public with sharing class Item {
    /**
    * The value to provide in the result.
    * @return id
    */
    @namespaceAccessible
    public String id { get; set; }

    /**
    * The display name.
    * @return name
    */
    @namespaceAccessible
    public String name { get; set; }

    @namespaceAccessible
    public static Item getExample() {
        Item item = new Item();
        item.id = '';
        item.name = '';
        return item;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof Item) {
            Item item = (Item) obj;
            return this.id == item.id
                && this.name == item.name;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (id == null ? 0 : System.hashCode(id));
        hashCode = (17 * hashCode) + (name == null ? 0 : System.hashCode(name));
        return hashCode;
    }
}