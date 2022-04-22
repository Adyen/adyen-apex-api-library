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
public with sharing class ApplicationInfo {
    /**
    * Get adyenLibrary
    * @return adyenLibrary
    */
    @namespaceAccessible
    public CommonField adyenLibrary { get; set; }

    /**
    * Get adyenPaymentSource
    * @return adyenPaymentSource
    */
    @namespaceAccessible
    public CommonField adyenPaymentSource { get; set; }

    /**
    * Get externalPlatform
    * @return externalPlatform
    */
    @namespaceAccessible
    public ExternalPlatform externalPlatform { get; set; }

    /**
    * Get merchantApplication
    * @return merchantApplication
    */
    @namespaceAccessible
    public CommonField merchantApplication { get; set; }

    @namespaceAccessible
    public static ApplicationInfo getExample() {
        ApplicationInfo applicationInfo = new ApplicationInfo();
        applicationInfo.adyenLibrary = CommonField.getExample();
        applicationInfo.adyenPaymentSource = CommonField.getExample();
        applicationInfo.externalPlatform = ExternalPlatform.getExample();
        applicationInfo.merchantApplication = CommonField.getExample();
        return applicationInfo;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof ApplicationInfo) {
            ApplicationInfo applicationInfo = (ApplicationInfo) obj;
            return this.adyenLibrary == applicationInfo.adyenLibrary
                && this.adyenPaymentSource == applicationInfo.adyenPaymentSource
                && this.externalPlatform == applicationInfo.externalPlatform
                && this.merchantApplication == applicationInfo.merchantApplication;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (adyenLibrary == null ? 0 : System.hashCode(adyenLibrary));
        hashCode = (17 * hashCode) + (adyenPaymentSource == null ? 0 : System.hashCode(adyenPaymentSource));
        hashCode = (17 * hashCode) + (externalPlatform == null ? 0 : System.hashCode(externalPlatform));
        hashCode = (17 * hashCode) + (merchantApplication == null ? 0 : System.hashCode(merchantApplication));
        return hashCode;
    }
}