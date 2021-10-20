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
public with sharing class Amount {
    /**
    * The three-character [ISO currency code](https://docs.adyen.com/development-resources/currency-codes).
    * @return currency
    */
    @namespaceAccessible
    public String currency_x { get; set; }

    /**
    * The amount of the transaction, in [minor units](https://docs.adyen.com/development-resources/currency-codes).
    * @return value
    */
    @namespaceAccessible
    public Long value { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'currency' => 'currency_x'
    };

    @namespaceAccessible
    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    @namespaceAccessible
    public static Amount getExample() {
        Amount amount = new Amount();
        amount.currency_x = '';
        amount.value = 123456789L;
        return amount;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof Amount) {
            Amount amount = (Amount) obj;
            return this.currency_x == amount.currency_x
                && this.value == amount.value;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (currency_x == null ? 0 : System.hashCode(currency_x));
        hashCode = (17 * hashCode) + (value == null ? 0 : System.hashCode(value));
        return hashCode;
    }
}