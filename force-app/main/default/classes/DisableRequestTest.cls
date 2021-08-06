@isTest
public class DisableRequestTest {

    @isTest
    private static void testAllMethodsFromDisableRequest(){
        DisableRequest testInstance1 = DisableRequest.getExample();

        Boolean retBooleanVal = testInstance1.equals(testInstance1);
        System.assertEquals(retBooleanVal, true);

        Boolean retBooleanVal2 = testInstance1.equals('');
        System.assertEquals(retBooleanVal2, false);

        Integer retIntValue = testInstance1.hashCode();

    }
}