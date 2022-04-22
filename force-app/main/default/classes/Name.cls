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
public with sharing class Name {
    /**
    * The first name.
    * @return firstName
    */
    @namespaceAccessible
    public String firstName { get; set; }

    /**
    * The gender.\n>The following values are permitted: `MALE`, `FEMALE`, `UNKNOWN`.
    */
    @namespaceAccessible
    public enum GenderEnum {
        MALE,
        FEMALE,
        UNKNOWN
    }

    /**
    * The gender.\n>The following values are permitted: `MALE`, `FEMALE`, `UNKNOWN`.
    * @return gender
    */
    @namespaceAccessible
    public GenderEnum gender { get; set; }

    /**
    * The name\'s infix, if applicable.\n>A maximum length of twenty (20) characters is imposed.
    * @return infix
    */
    @namespaceAccessible
    public String infix { get; set; }

    /**
    * The last name.
    * @return lastName
    */
    @namespaceAccessible
    public String lastName { get; set; }

    @namespaceAccessible
    public static Name getExample() {
        Name name = new Name();
        name.firstName = '';
        name.gender = GenderEnum.MALE;
        name.infix = '';
        name.lastName = '';
        return name;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof Name) {
            Name name = (Name) obj;
            return this.firstName == name.firstName
                && this.gender == name.gender
                && this.infix == name.infix
                && this.lastName == name.lastName;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (firstName == null ? 0 : System.hashCode(firstName));
        hashCode = (17 * hashCode) + (gender == null ? 0 : System.hashCode(gender));
        hashCode = (17 * hashCode) + (infix == null ? 0 : System.hashCode(infix));
        hashCode = (17 * hashCode) + (lastName == null ? 0 : System.hashCode(lastName));
        return hashCode;
    }
}