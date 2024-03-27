@NamespaceAccessible
public without sharing class AuthenticationData {
    /**
     * Indicates when 3D Secure authentication should be attempted. This overrides all other rules, including Dynamic 3D Secure settings.
     * Possible values:
     * always: Perform 3D Secure authentication.
     * never: Don't perform 3D Secure authentication. If PSD2 SCA or other national regulations require authentication, the transaction gets declined.
     */
    @NamespaceAccessible
    public String attemptAuthentication { get; set; }

    /**
     * If set to true, you will only perform the 3D Secure 2 authentication, and not the payment authorisation.
     * Default: false.
     */
    @NamespaceAccessible
    public Boolean authenticationOnly { get; set; }

    /**
     * Object with additional parameters for the 3D Secure authentication flow.
     */
    @NamespaceAccessible
    public ThreeDSRequestData threeDSRequestData { get; set; }

    @NamespaceAccessible
    public AuthenticationData() {}

    @NamespaceAccessible
    public static AuthenticationData getExample() {
        AuthenticationData authenticationData = new AuthenticationData();
        authenticationData.attemptAuthentication = 'always';
        authenticationData.authenticationOnly = false;
        authenticationData.threeDSRequestData = ThreeDSRequestData.getExample();
        return authenticationData;
    }
}