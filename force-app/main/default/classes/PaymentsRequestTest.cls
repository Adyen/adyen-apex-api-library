@IsTest
public class PaymentsRequestTest {
    /**
    * Test method to enhance code coverage for Apex Models; This ain't validating any specific business use case.
    * Enhances code coverage for PaymentRequest apex class
    */
    @IsTest
    private static void testAllMethodsFromPaymentsRequest(){
        PaymentsRequest testInstance1 = PaymentsRequest.getExample();
        PaymentsRequest testInstance2 = PaymentsRequest.getExample();
        Integer retIntValue = testInstance1.hashCode();
        testInstance2.channel = 'web';

        Assert.areEqual(testInstance1, testInstance1);
        Assert.areNotEqual(testInstance1, testInstance2);
        Assert.isNotNull(retIntValue);
    }

}