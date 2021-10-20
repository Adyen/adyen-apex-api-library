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
public with sharing class SepaDirectDebitDetails implements PaymentMethodDetails {
    /**
    * Get ibanNumber
    * @return ibanNumber
    */
    @namespaceAccessible
    public String ibanNumber { get; set; }

    /**
    * Get ownerName
    * @return ownerName
    */
    @namespaceAccessible
    public String ownerName { get; set; }

    /**
    * **scheme**
    * @return type
    */
    @namespaceAccessible
    public String type { get; set; }

    @namespaceAccessible
    public SepaDirectDebitDetails() {
        type = 'sepadirectdebit';
    }

    @namespaceAccessible
    public String getType() {
        return type;
    }

    @namespaceAccessible
    public void setType(String type) {
        this.type = type;
    }

    @namespaceAccessible
    public static SepaDirectDebitDetails getExample() {
        SepaDirectDebitDetails sepaDirectDebitDetails = new SepaDirectDebitDetails();
        sepaDirectDebitDetails.ibanNumber = '';
        sepaDirectDebitDetails.ownerName = '';
        sepaDirectDebitDetails.type = '';
        return sepaDirectDebitDetails;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof SepaDirectDebitDetails) {
            SepaDirectDebitDetails sepaDirectDebitDetails = (SepaDirectDebitDetails) obj;
            return this.ibanNumber == sepaDirectDebitDetails.ibanNumber
                && this.ownerName == sepaDirectDebitDetails.ownerName
                && this.type == sepaDirectDebitDetails.type;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (ibanNumber == null ? 0 : System.hashCode(ibanNumber));
        hashCode = (17 * hashCode) + (ownerName == null ? 0 : System.hashCode(ownerName));
        hashCode = (17 * hashCode) + (type == null ? 0 : System.hashCode(type));
        return hashCode;
    }
}