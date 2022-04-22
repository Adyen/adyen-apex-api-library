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
public with sharing class Card {
    /**
    * The [card verification code](https://docs.adyen.com/payments-fundamentals/payment-glossary#card-security-code-cvc-cvv-cid) (1-20 characters). Depending on the card brand, it is known also as:\n* CVV2/CVC2 – length: 3 digits\n* CID – length: 4 digits\n> If you are using [Client-Side Encryption](https://docs.adyen.com/classic-integration/cse-integration-ecommerce), the CVC code is present in the encrypted data. You must never post the card details to the server.\n> This field must be always present in a [one-click payment request](https://docs.adyen.com/classic-integration/recurring-payments).\n> When this value is returned in a response, it is always empty because it is not stored.
    * @return cvc
    */
    @namespaceAccessible
    public String cvc { get; set; }

    /**
    * The card expiry month.\nFormat: 2 digits, zero-padded for single digits. For example:\n* 03 = March\n* 11 = November
    * @return expiryMonth
    */
    @namespaceAccessible
    public String expiryMonth { get; set; }

    /**
    * The card expiry year.\nFormat: 4 digits. For example: 2020
    * @return expiryYear
    */
    @namespaceAccessible
    public String expiryYear { get; set; }

    /**
    * The name of the cardholder, as printed on the card.
    * @return holderName
    */
    @namespaceAccessible
    public String holderName { get; set; }

    /**
    * The issue number of the card (for some UK debit cards only).
    * @return issueNumber
    */
    @namespaceAccessible
    public String issueNumber { get; set; }

    /**
    * The card number (4-19 characters). Do not use any separators.\nWhen this value is returned in a response, only the last 4 digits of the card number are returned.
    * @return number
    */
    @namespaceAccessible
    public String number_x { get; set; }

    /**
    * The month component of the start date (for some UK debit cards only).
    * @return startMonth
    */
    @namespaceAccessible
    public String startMonth { get; set; }

    /**
    * The year component of the start date (for some UK debit cards only).
    * @return startYear
    */
    @namespaceAccessible
    public String startYear { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'number' => 'number_x'
    };

    @namespaceAccessible
    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    @namespaceAccessible
    public static Card getExample() {
        Card card = new Card();
        card.cvc = '';
        card.expiryMonth = '';
        card.expiryYear = '';
        card.holderName = '';
        card.issueNumber = '';
        card.number_x = '';
        card.startMonth = '';
        card.startYear = '';
        return card;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof Card) {
            Card card = (Card) obj;
            return this.cvc == card.cvc
                && this.expiryMonth == card.expiryMonth
                && this.expiryYear == card.expiryYear
                && this.holderName == card.holderName
                && this.issueNumber == card.issueNumber
                && this.number_x == card.number_x
                && this.startMonth == card.startMonth
                && this.startYear == card.startYear;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (cvc == null ? 0 : System.hashCode(cvc));
        hashCode = (17 * hashCode) + (expiryMonth == null ? 0 : System.hashCode(expiryMonth));
        hashCode = (17 * hashCode) + (expiryYear == null ? 0 : System.hashCode(expiryYear));
        hashCode = (17 * hashCode) + (holderName == null ? 0 : System.hashCode(holderName));
        hashCode = (17 * hashCode) + (issueNumber == null ? 0 : System.hashCode(issueNumber));
        hashCode = (17 * hashCode) + (number_x == null ? 0 : System.hashCode(number_x));
        hashCode = (17 * hashCode) + (startMonth == null ? 0 : System.hashCode(startMonth));
        hashCode = (17 * hashCode) + (startYear == null ? 0 : System.hashCode(startYear));
        return hashCode;
    }
}