@isTest
public class PaymentsDetailsRequestTest {

    @isTest
    private static void testAllMethodsFromPaymentsDetailsRequest(){
        PaymentsDetailsRequest testInstance1 = PaymentsDetailsRequest.getExample();

        Boolean retBooleanVal = testInstance1.equals(testInstance1);
        System.assertEquals(retBooleanVal, true);

        Boolean retBooleanVal2 = testInstance1.equals('');
        System.assertEquals(retBooleanVal2, false);

        Integer retIntValue = testInstance1.hashCode();

    }
}