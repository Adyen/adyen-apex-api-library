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
public with sharing class StoredDetails {
    /**
    * Get card
    * @return card
    */
    @namespaceAccessible
    public Card card { get; set; }

    /**
    * The email associated with stored payment details.
    * @return emailAddress
    */
    @namespaceAccessible
    public String emailAddress { get; set; }

    @namespaceAccessible
    public static StoredDetails getExample() {
        StoredDetails storedDetails = new StoredDetails();
        storedDetails.card = Card.getExample();
        storedDetails.emailAddress = '';
        return storedDetails;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof StoredDetails) {
            StoredDetails storedDetails = (StoredDetails) obj;
            return this.card == storedDetails.card
                && this.emailAddress == storedDetails.emailAddress;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (card == null ? 0 : System.hashCode(card));
        hashCode = (17 * hashCode) + (emailAddress == null ? 0 : System.hashCode(emailAddress));
        return hashCode;
    }
}