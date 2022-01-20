@isTest
public class SessionsRequestTest {

    /**
    * Test method to enhance code coverage for Apex Models; This ain't validating any specific business use case.
    * Enhances code coverage for SessionsRequest apex class
    */
    @isTest
    private static void testAllMethodsFromSessionsRequest() {
        SessionsRequest testRequest = SessionsRequest.getExample();

        Boolean retBooleanVal = testRequest.equals(testRequest);
        System.assertEquals(retBooleanVal, true);

        Boolean retBooleanVal2 = testRequest.equals('');
        System.assertEquals(retBooleanVal2, false);
    }
}