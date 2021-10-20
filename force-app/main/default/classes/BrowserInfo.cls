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
public with sharing class BrowserInfo {
    /**
    * The accept header value of the shopper\'s browser.
    * @return acceptHeader
    */
    @namespaceAccessible
    public String acceptHeader { get; set; }

    /**
    * The color depth of the shopper\'s browser in bits per pixel. This should be obtained by using the browser\'s `screen.colorDepth` property. Accepted values: 1, 4, 8, 15, 16, 24, 30, 32 or 48 bit color depth.
    * @return colorDepth
    */
    @namespaceAccessible
    public Integer colorDepth { get; set; }

    /**
    * Boolean value indicating if the shopper\'s browser is able to execute Java.
    * @return javaEnabled
    */
    @namespaceAccessible
    public Boolean javaEnabled { get; set; }

    /**
    * Boolean value indicating if the shopper\'s browser is able to execute JavaScript. A default \'true\' value is assumed if the field is not present.
    * @return javaScriptEnabled
    */
    @namespaceAccessible
    public Boolean javaScriptEnabled { get; set; }

    /**
    * The `navigator.language` value of the shopper\'s browser (as defined in IETF BCP 47).
    * @return language
    */
    @namespaceAccessible
    public String language { get; set; }

    /**
    * The total height of the shopper\'s device screen in pixels.
    * @return screenHeight
    */
    @namespaceAccessible
    public Integer screenHeight { get; set; }

    /**
    * The total width of the shopper\'s device screen in pixels.
    * @return screenWidth
    */
    @namespaceAccessible
    public Integer screenWidth { get; set; }

    /**
    * Time difference between UTC time and the shopper\'s browser local time, in minutes.
    * @return timeZoneOffset
    */
    @namespaceAccessible
    public Integer timeZoneOffset { get; set; }

    /**
    * The user agent value of the shopper\'s browser.
    * @return userAgent
    */
    @namespaceAccessible
    public String userAgent { get; set; }

    @namespaceAccessible
    public BrowserInfo() {
        javaScriptEnabled = true;
    }

    @namespaceAccessible
    public static BrowserInfo getExample() {
        BrowserInfo browserInfo = new BrowserInfo();
        browserInfo.acceptHeader = '';
        browserInfo.colorDepth = 0;
        browserInfo.javaEnabled = true;
        browserInfo.javaScriptEnabled = true;
        browserInfo.language = '';
        browserInfo.screenHeight = 0;
        browserInfo.screenWidth = 0;
        browserInfo.timeZoneOffset = 0;
        browserInfo.userAgent = '';
        return browserInfo;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof BrowserInfo) {
            BrowserInfo browserInfo = (BrowserInfo) obj;
            return this.acceptHeader == browserInfo.acceptHeader
                && this.colorDepth == browserInfo.colorDepth
                && this.javaEnabled == browserInfo.javaEnabled
                && this.javaScriptEnabled == browserInfo.javaScriptEnabled
                && this.language == browserInfo.language
                && this.screenHeight == browserInfo.screenHeight
                && this.screenWidth == browserInfo.screenWidth
                && this.timeZoneOffset == browserInfo.timeZoneOffset
                && this.userAgent == browserInfo.userAgent;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (acceptHeader == null ? 0 : System.hashCode(acceptHeader));
        hashCode = (17 * hashCode) + (colorDepth == null ? 0 : System.hashCode(colorDepth));
        hashCode = (17 * hashCode) + (javaEnabled == null ? 0 : System.hashCode(javaEnabled));
        hashCode = (17 * hashCode) + (javaScriptEnabled == null ? 0 : System.hashCode(javaScriptEnabled));
        hashCode = (17 * hashCode) + (language == null ? 0 : System.hashCode(language));
        hashCode = (17 * hashCode) + (screenHeight == null ? 0 : System.hashCode(screenHeight));
        hashCode = (17 * hashCode) + (screenWidth == null ? 0 : System.hashCode(screenWidth));
        hashCode = (17 * hashCode) + (timeZoneOffset == null ? 0 : System.hashCode(timeZoneOffset));
        hashCode = (17 * hashCode) + (userAgent == null ? 0 : System.hashCode(userAgent));
        return hashCode;
    }
}