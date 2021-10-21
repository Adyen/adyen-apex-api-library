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
public with sharing class CardDetails implements PaymentMethodDetails {
    /**
    * Get cvc
    * @return cvc
    */
    @namespaceAccessible
    public String cvc { get; set; }

    /**
    * Get encryptedCardNumber
    * @return encryptedCardNumber
    */
    @namespaceAccessible
    public String encryptedCardNumber { get; set; }

    /**
    * Get encryptedExpiryMonth
    * @return encryptedExpiryMonth
    */
    @namespaceAccessible
    public String encryptedExpiryMonth { get; set; }

    /**
    * Get encryptedExpiryYear
    * @return encryptedExpiryYear
    */
    @namespaceAccessible
    public String encryptedExpiryYear { get; set; }

    /**
    * Get encryptedSecurityCode
    * @return encryptedSecurityCode
    */
    @namespaceAccessible
    public String encryptedSecurityCode { get; set; }

    /**
    * Get expiryMonth
    * @return expiryMonth
    */
    @namespaceAccessible
    public String expiryMonth { get; set; }

    /**
    * Get expiryYear
    * @return expiryYear
    */
    @namespaceAccessible
    public String expiryYear { get; set; }

    /**
    * Get holderName
    * @return holderName
    */
    @namespaceAccessible
    public String holderName { get; set; }

    /**
    * Get number_x
    * @return number_x
    */
    @namespaceAccessible
    public String number_x { get; set; }

    /**
    * This is the `recurringDetailReference` returned in the response when you created the token.
    * @return storedPaymentMethodId
    */
    @namespaceAccessible
    public String storedPaymentMethodId { get; set; }

    @namespaceAccessible
    public String getStoredPaymentMethodId(){
        return storedPaymentMethodId;
    }

    /**
    * **scheme**
    * @return type
    */
    @namespaceAccessible
    public String type { get; set; }

    @namespaceAccessible
    public CardDetails() {
        type = 'scheme';
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
    public static CardDetails getExample() {
        CardDetails cardDetails = new CardDetails();
        cardDetails.cvc = '';
        cardDetails.encryptedCardNumber = '';
        cardDetails.encryptedExpiryMonth = '';
        cardDetails.encryptedExpiryYear = '';
        cardDetails.encryptedSecurityCode = '';
        cardDetails.expiryMonth = '';
        cardDetails.expiryYear = '';
        cardDetails.holderName = '';
        cardDetails.number_x = '';
        cardDetails.storedPaymentMethodId = '';
        cardDetails.type = '';
        return cardDetails;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof CardDetails) {
            CardDetails cardDetails = (CardDetails) obj;
            return this.cvc == cardDetails.cvc
                && this.encryptedCardNumber == cardDetails.encryptedCardNumber
                && this.encryptedExpiryMonth == cardDetails.encryptedExpiryMonth
                && this.encryptedExpiryYear == cardDetails.encryptedExpiryYear
                && this.encryptedSecurityCode == cardDetails.encryptedSecurityCode
                && this.expiryMonth == cardDetails.expiryMonth
                && this.expiryYear == cardDetails.expiryYear
                && this.holderName == cardDetails.holderName
                && this.number_x == cardDetails.number_x
                && this.storedPaymentMethodId == cardDetails.storedPaymentMethodId
                && this.type == cardDetails.type;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (cvc == null ? 0 : System.hashCode(cvc));
        hashCode = (17 * hashCode) + (encryptedCardNumber == null ? 0 : System.hashCode(encryptedCardNumber));
        hashCode = (17 * hashCode) + (encryptedExpiryMonth == null ? 0 : System.hashCode(encryptedExpiryMonth));
        hashCode = (17 * hashCode) + (encryptedExpiryYear == null ? 0 : System.hashCode(encryptedExpiryYear));
        hashCode = (17 * hashCode) + (encryptedSecurityCode == null ? 0 : System.hashCode(encryptedSecurityCode));
        hashCode = (17 * hashCode) + (expiryMonth == null ? 0 : System.hashCode(expiryMonth));
        hashCode = (17 * hashCode) + (expiryYear == null ? 0 : System.hashCode(expiryYear));
        hashCode = (17 * hashCode) + (holderName == null ? 0 : System.hashCode(holderName));
        hashCode = (17 * hashCode) + (number_x == null ? 0 : System.hashCode(number_x));
        hashCode = (17 * hashCode) + (storedPaymentMethodId == null ? 0 : System.hashCode(storedPaymentMethodId));
        hashCode = (17 * hashCode) + (type == null ? 0 : System.hashCode(type));
        return hashCode;
    }
}