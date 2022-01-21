@isTest
public class SessionsResponseTest {

	/**
	* Test method to enhance code coverage for Apex Models; This ain't validating any specific business use case.
	* Enhances code coverage for SessionsResponse apex class
	*/
	@isTest
	private static void testAllMethodsFromSessionsResponse() {
		SessionsResponse testResponse = SessionsResponse.getExample();

		Boolean retBooleanVal = testResponse.equals(testResponse);
		System.assertEquals(retBooleanVal, true);

		Boolean retBooleanVal2 = testResponse.equals('');
		System.assertEquals(retBooleanVal2, false);
	}
}