@isTest
public class AdyenClientTest {

    /**
    * Test method to enhance code coverage for Apex Models; This ain't validating any specific business use case.
    * Enhances code coverage for AdyenClient apex class
    */
    @isTest
    private static void testAllMethodsFromAdyenClient(){
        Test.setMock(HttpCalloutMock.class, new ApiLibMock.AdyenPaymentsSuccessMock());
        AdyenClient testADNC = new AdyenClient('37ufgu3iyrfhed','https://testendpoint.com');
        Test.startTest();
        HttpResponse res = testADNC.request(testADNC.config,'testrequeststring');
        Test.stopTest();
        System.assert(res!=null,'This is from AdyenClientTest');
    }
}