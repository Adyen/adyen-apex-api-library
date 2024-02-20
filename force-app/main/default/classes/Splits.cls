/*
* Adyen Payment API
* A set of API endpoints that allow you to initiate, settle, and modify payments on the Adyen payments platform.
* You can use the API to accept card payments (including One-Click and 3D Secure), bank transfers, ewallets, and many other payment methods.
* To learn more about the API, visit [Classic integration](https://docs.adyen.com/classic-integration).\n\n## Authentication\nTo connect to the Payments API, you must use your basic authentication credentials. For this, create your web service user, as described in [How to get the WS user password](https://docs.adyen.com/user-management/how-to-get-the-web-service-ws-user-password). Then use its credentials to authenticate your request, for example:\n\n```\ncurl\n-U "ws@Company.YourCompany":"YourWsPassword" \\n-H "Content-Type: application/json" \\n...\n```\nNote that when going live, you need to generate new web service user credentials to access the [live endpoints](https://docs.adyen.com/development-resources/live-endpoints).\n\n## Versioning\nPayments API supports versioning of its endpoints through a version suffix in the endpoint URL. This suffix has the following format: "vXX", where XX is the version number.\n\nFor example:\n```\nhttps://pal-test.adyen.com/pal/servlet/Payment/v64/authorise\n```
*
* Contact: support@adyen.com
*
* An array of objects specifying how the payment should be split when using Adyen for Platforms or Issuing.
*
* Do not edit the class manually.
*/

@namespaceAccessible
public with sharing class Splits {
    /**
    * Unique identifier of the account where the split amount should be sent. This is required if type is MarketPlace or BalanceAccount.
    * @return account
    */
    @namespaceAccessible
    public String account { get; set; }

    /**
    * The amount of this split.
    * @return amount
    */
    @namespaceAccessible
    public Amount amount { get; set; }

    /**
    * A description of this split.
    * @return description
    */
    @namespaceAccessible
    public String description { get; set; }

    /**
    * Your reference for the split, which you can use to link the split to other operations such as captures and refunds.
    * @return reference
    */
    @namespaceAccessible
    public String reference { get; set; }

    /**
    * The type of split.
    * @return type
    */
    @namespaceAccessible
    public String type { get; set; }

    @namespaceAccessible
    public static Splits getExample() {
        Splits splits = new Splits();
        splits.account = '';
        splits.amount = Amount.getExample();
        splits.description = '';
        splits.reference = '';
        splits.type = '';
        return splits;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof Splits) {
            Splits splits = (Splits) obj;
            return this.account == splits.account
                && this.amount == splits.amount
                && this.description == splits.description
                && this.reference == splits.reference
                && this.type == splits.type;
        }
        return false;
    }
}