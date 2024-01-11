@NamespaceAccessible
public without sharing class ThreeDSRequestData {
    /**
    * Dimensions of the 3DS2 challenge window to be displayed to the cardholder.
    * Possible values:
    * 01 - size of 250x400
    * 02 - size of 390x400
    * 03 - size of 500x600
    * 04 - size of 600x400
    * 05 - Fullscreen
    */
    @NamespaceAccessible
    public String challengeWindowSize { get; set; }

    /**
     * Flag for data only flow.
     */
    @NamespaceAccessible
    public String dataOnly { get; set; }

    /**
     * Indicates if native 3D Secure authentication should be used when available.
     * Possible values:
     * preferred: Use native 3D Secure authentication when available.
     */
    @NamespaceAccessible
    public String nativeThreeDS { get; set; }

    /**
     * The version of 3D Secure to use.
     * Possible values:
     * 2.1.0
     * 2.2.0
     */
    @NamespaceAccessible
    public String threeDSVersion { get; set; }

    @NamespaceAccessible
    public ThreeDSRequestData() {}

    @NamespaceAccessible
    public static ThreeDSRequestData getExample() {
        ThreeDSRequestData threeDSRequestData = new ThreeDSRequestData();
        threeDSRequestData.challengeWindowSize = '01';
        threeDSRequestData.dataOnly = 'true';
        threeDSRequestData.nativeThreeDS = 'preferred';
        threeDSRequestData.threeDSVersion = '2.2.0';
        return threeDSRequestData;
    }
}