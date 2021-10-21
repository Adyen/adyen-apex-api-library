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
public with sharing class StoredPaymentMethod {
    /**
    * The brand of the card.
    * @return brand
    */
    @namespaceAccessible
    public String brand { get; set; }

    /**
    * The month the card expires.
    * @return expiryMonth
    */
    @namespaceAccessible
    public String expiryMonth { get; set; }

    /**
    * The year the card expires.
    * @return expiryYear
    */
    @namespaceAccessible
    public String expiryYear { get; set; }

    /**
    * The unique payment method code.
    * @return holderName
    */
    @namespaceAccessible
    public String holderName { get; set; }

    /**
    * A unique identifier of this stored payment method.
    * @return id
    */
    @namespaceAccessible
    public String id { get; set; }

    /**
    * The last four digits of the PAN.
    * @return lastFour
    */
    @namespaceAccessible
    public String lastFour { get; set; }

    /**
    * The display name of the stored payment method.
    * @return name
    */
    @namespaceAccessible
    public String name { get; set; }

    /**
    * The shopper’s email address.
    * @return shopperEmail
    */
    @namespaceAccessible
    public String shopperEmail { get; set; }

    /**
    * The supported shopper interactions for this stored payment method.
    * @return supportedShopperInteractions
    */
    @namespaceAccessible
    public List<String> supportedShopperInteractions { get; set; }

    /**
    * The type of payment method.
    * @return type
    */
    @namespaceAccessible
    public String type { get; set; }

    @namespaceAccessible
    public StoredPaymentMethod() {
        supportedShopperInteractions = new List<String>();
    }

    @namespaceAccessible
    public static StoredPaymentMethod getExample() {
        StoredPaymentMethod storedPaymentMethod = new StoredPaymentMethod();
        storedPaymentMethod.brand = '';
        storedPaymentMethod.expiryMonth = '';
        storedPaymentMethod.expiryYear = '';
        storedPaymentMethod.holderName = '';
        storedPaymentMethod.id = '';
        storedPaymentMethod.lastFour = '';
        storedPaymentMethod.name = '';
        storedPaymentMethod.shopperEmail = '';
        storedPaymentMethod.supportedShopperInteractions = new List<String>{''};
        storedPaymentMethod.type = '';
        return storedPaymentMethod;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof StoredPaymentMethod) {
            StoredPaymentMethod storedPaymentMethod = (StoredPaymentMethod) obj;
            return this.brand == storedPaymentMethod.brand
                && this.expiryMonth == storedPaymentMethod.expiryMonth
                && this.expiryYear == storedPaymentMethod.expiryYear
                && this.holderName == storedPaymentMethod.holderName
                && this.id == storedPaymentMethod.id
                && this.lastFour == storedPaymentMethod.lastFour
                && this.name == storedPaymentMethod.name
                && this.shopperEmail == storedPaymentMethod.shopperEmail
                && this.supportedShopperInteractions == storedPaymentMethod.supportedShopperInteractions
                && this.type == storedPaymentMethod.type;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (brand == null ? 0 : System.hashCode(brand));
        hashCode = (17 * hashCode) + (expiryMonth == null ? 0 : System.hashCode(expiryMonth));
        hashCode = (17 * hashCode) + (expiryYear == null ? 0 : System.hashCode(expiryYear));
        hashCode = (17 * hashCode) + (holderName == null ? 0 : System.hashCode(holderName));
        hashCode = (17 * hashCode) + (id == null ? 0 : System.hashCode(id));
        hashCode = (17 * hashCode) + (lastFour == null ? 0 : System.hashCode(lastFour));
        hashCode = (17 * hashCode) + (name == null ? 0 : System.hashCode(name));
        hashCode = (17 * hashCode) + (shopperEmail == null ? 0 : System.hashCode(shopperEmail));
        hashCode = (17 * hashCode) + (supportedShopperInteractions == null ? 0 : System.hashCode(supportedShopperInteractions));
        hashCode = (17 * hashCode) + (type == null ? 0 : System.hashCode(type));
        return hashCode;
    }
}