@isTest
public class ACHDetailsTest {
    /**
    * Test method to enhance code coverage for Apex Models; This ain't validating any specific business use cases.
    * Enhances code coverage for ACHDetails apex class
    */
    @isTest
    private static void testAllMethodsFromACHDetails(){
        ACHDetails achTestInstance0 = ACHDetails.getExample();
        System.assertEquals(achTestInstance0.encryptedBankAccountNumber,'');

        ACHDetails achTestInstance1 = new ACHDetails();
        achTestInstance1.setType('TestString');
        String retStringVal = achTestInstance1.getType();
        System.debug('retStringVal : ' + retStringVal);
        Boolean retBooleanVal1 = achTestInstance1.equals(achTestInstance1);
        Integer retIntValue = achTestInstance1.hashCode();
        System.assertEquals(retBooleanVal1,true);

        ACHDetails achTestInstance2 = new ACHDetails();
        Boolean retBooleanVal2 = achTestInstance2.equals('Test');
        System.assertEquals(retBooleanVal2,false);

    }

}