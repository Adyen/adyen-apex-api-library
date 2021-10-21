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
public with sharing class ExternalPlatform {
    /**
    * External platform integrator.
    * @return integrator
    */
    @namespaceAccessible
    public String integrator { get; set; }

    /**
    * Name of the field. For example, Name of External Platform.
    * @return name
    */
    @namespaceAccessible
    public String name { get; set; }

    /**
    * Version of the field. For example, Version of External Platform.
    * @return version
    */
    @namespaceAccessible
    public String version { get; set; }

    @namespaceAccessible
    public static ExternalPlatform getExample() {
        ExternalPlatform externalPlatform = new ExternalPlatform();
        externalPlatform.integrator = '';
        externalPlatform.name = '';
        externalPlatform.version = '';
        return externalPlatform;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof ExternalPlatform) {
            ExternalPlatform externalPlatform = (ExternalPlatform) obj;
            return this.integrator == externalPlatform.integrator
                && this.name == externalPlatform.name
                && this.version == externalPlatform.version;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (integrator == null ? 0 : System.hashCode(integrator));
        hashCode = (17 * hashCode) + (name == null ? 0 : System.hashCode(name));
        hashCode = (17 * hashCode) + (version == null ? 0 : System.hashCode(version));
        return hashCode;
    }
}