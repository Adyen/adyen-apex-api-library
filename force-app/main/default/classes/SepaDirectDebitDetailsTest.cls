@isTest
public class SepaDirectDebitDetailsTest {

    @isTest
    private static void testAllMethodsFromSepaDirectDebitDetails(){
        SepaDirectDebitDetails testInstance1 = SepaDirectDebitDetails.getExample();

        testInstance1.setType('TestString');
        String retStringVal = testInstance1.getType();

        Boolean retBooleanVal = testInstance1.equals(testInstance1);
        System.assertEquals(retBooleanVal, true);

        Boolean retBooleanVal2 = testInstance1.equals('');
        System.assertEquals(retBooleanVal2, false);

        Integer retIntValue = testInstance1.hashCode();

    }
}