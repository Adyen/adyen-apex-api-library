@isTest
public class PaymentMethodsRequestTest {

    @isTest
    private static void testAllMethodsFromPaymentMethodsRequest(){
        PaymentMethodsRequest testInstance1 = PaymentMethodsRequest.getExample();

        Boolean retBooleanVal = testInstance1.equals(testInstance1);
        System.assertEquals(retBooleanVal, true);

        Boolean retBooleanVal2 = testInstance1.equals('');
        System.assertEquals(retBooleanVal2, false);

        Integer retIntValue = testInstance1.hashCode();

    }

}