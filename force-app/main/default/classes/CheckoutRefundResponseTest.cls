@isTest
public class CheckoutRefundResponseTest {

    /**
    * Test method to enhance code coverage for Apex Models; This ain't validating any specific business use case.
    * Enhances code coverage for CheckoutCaptureResponse apex class
    */
    @isTest
    private static void testAllMethodsFromCheckoutRefundResponse(){
        CheckoutRefundResponse testRefundResponse = new CheckoutRefundResponse();

        Amount testAmount = new Amount();
        testAmount.value = 123456789L;

        testRefundResponse.setAmount(testAmount);
        System.assertEquals(testRefundResponse.getAmount().value, 123456789L);

        testRefundResponse.setPSPReference(AdyenConstants.TEST_PSP_REFERENCE);
        System.assertEquals(testRefundResponse.getPSPReference(), AdyenConstants.TEST_PSP_REFERENCE);

        testRefundResponse.setPaymentPspReference(AdyenConstants.TEST_PAYMENT_PSP_REFERENCE);
        System.assertEquals(testRefundResponse.getPaymentPspReference(), AdyenConstants.TEST_PAYMENT_PSP_REFERENCE);

        testRefundResponse.setMerchantAccount(AdyenConstants.TEST_MERCHANT_ACCOUNT);
        System.assertEquals(testRefundResponse.getMerchantAccount(), AdyenConstants.TEST_MERCHANT_ACCOUNT);

        testRefundResponse.setReference(AdyenConstants.TEST_REFERENCE);
        System.assertEquals(testRefundResponse.getReference(), AdyenConstants.TEST_REFERENCE);

        testRefundResponse.setStatus(AdyenConstants.TEST_STATUS);
        System.assertEquals(testRefundResponse.getStatus(), AdyenConstants.TEST_STATUS);
    }
}