@isTest
public class CheckoutCaptureResponseTest {

    /**
    * Test method to enhance code coverage for Apex Models; This ain't validating any specific business use case.
    * Enhances code coverage for CheckoutCaptureResponse apex class
    */
    @isTest
    private static void testAllMethodsFromCheckoutCaptureResponse(){
        CheckoutCaptureResponse testCaptureResponse = new CheckoutCaptureResponse();

        Amount testAmount = new Amount();
        testAmount.value = 123456789L;

        testCaptureResponse.setAmount(testAmount);
        System.assertEquals(testCaptureResponse.getAmount().value,123456789L);

        testCaptureResponse.setPSPReference(AdyenConstants.TEST_PSP_REFERENCE);
        System.assertEquals(testCaptureResponse.getPSPReference(), AdyenConstants.TEST_PSP_REFERENCE);

        testCaptureResponse.setPaymentPspReference(AdyenConstants.TEST_PAYMENT_PSP_REFERENCE);
        System.assertEquals(testCaptureResponse.getPaymentPspReference(), AdyenConstants.TEST_PAYMENT_PSP_REFERENCE);

        testCaptureResponse.setMerchantAccount(AdyenConstants.TEST_MERCHANT_ACCOUNT);
        System.assertEquals(testCaptureResponse.getMerchantAccount(), AdyenConstants.TEST_MERCHANT_ACCOUNT);

        testCaptureResponse.setReference(AdyenConstants.TEST_REFERENCE);
        System.assertEquals(testCaptureResponse.getReference(), AdyenConstants.TEST_REFERENCE);

        testCaptureResponse.setStatus(AdyenConstants.TEST_STATUS);
        System.assertEquals(testCaptureResponse.getStatus(), AdyenConstants.TEST_STATUS);
    }
}