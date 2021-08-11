@isTest
public class PaymentsResponseTest {

    /**
    * Test method to enhance code coverage for Apex Models; This ain't validating any specific business use case.
    * Enhances code coverage for PaymentsResponse apex class
    */
    @isTest
    private static void testAllMethodsFromPaymentsResponse(){
        PaymentsResponse testInstance1 = PaymentsResponse.getExample();

        Boolean retBooleanVal = testInstance1.equals(testInstance1);
        System.assertEquals(retBooleanVal, true);

        Boolean retBooleanVal2 = testInstance1.equals('');
        System.assertEquals(retBooleanVal2, false);

        Integer retIntValue = testInstance1.hashCode();


    }
}