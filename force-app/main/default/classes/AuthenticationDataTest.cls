/**
 * Created by daniloc on 11/01/2024.
 */

@IsTest
private class AuthenticationDataTest {
    @IsTest
    static void getExampleTest() {
        AuthenticationData authenticationData = AuthenticationData.getExample();
        Assert.isNotNull(authenticationData);
        Assert.isNotNull(authenticationData.attemptAuthentication);
        Assert.isNotNull(authenticationData.authenticationOnly);
        Assert.isNotNull(authenticationData.threeDSRequestData);
    }
}