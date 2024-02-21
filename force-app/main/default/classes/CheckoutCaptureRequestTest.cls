@isTest
public class CheckoutCaptureRequestTest {

    /**
    * Test method to enhance code coverage for Apex Models; This ain't validating any specific business use case.
    * Enhances code coverage for CheckoutCaptureRequest apex class
    */
    @isTest
    private static void testAllMethodsFromCheckoutCaptureRequest(){
        CheckoutCaptureRequest testCaptureRequest = new CheckoutCaptureRequest();

        Amount testAmount = new Amount();
        testAmount.value = 123456789L;

        testCaptureRequest.setAmount(testAmount);
        System.assertEquals(testCaptureRequest.getAmount().value, 123456789L );

        testCaptureRequest.setReference(AdyenConstants.TEST_REFERENCE);
        System.assertEquals(testCaptureRequest.getReference(), AdyenConstants.TEST_REFERENCE);

        testCaptureRequest.setMerchantAccount(AdyenConstants.TEST_MERCHANT_ACCOUNT);
        System.assertEquals(testCaptureRequest.getMerchantAccount(), AdyenConstants.TEST_MERCHANT_ACCOUNT );

        testCaptureRequest.setLineItems(new List<LineItem>{new LineItem()});
        System.assertEquals(1, testCaptureRequest.getLineItems().size());

    		testCaptureRequest.setApplicationInfo(ApplicationInfo.getExample());
        System.assertEquals(testCaptureRequest.getApplicationInfo().adyenLibrary.name, '');


    }
}