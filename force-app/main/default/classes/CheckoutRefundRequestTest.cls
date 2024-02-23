@isTest
public class CheckoutRefundRequestTest {

    /**
    * Test method to enhance code coverage for Apex Models; This ain't validating any specific business use case.
    * Enhances code coverage for CheckoutRefundRequest apex class
    */
    @isTest
    private static void testAllMethodsFromCheckoutRefundRequest(){
        CheckoutRefundRequest testRefundRequest = new CheckoutRefundRequest();

        Amount testAmount = new Amount();
        testAmount.value = 123456789L;

        testRefundRequest.setAmount(testAmount);
        System.assertEquals(testRefundRequest.getAmount().value, 123456789L);

        testRefundRequest.setReference(AdyenConstants.TEST_REFERENCE);
        System.assertEquals(testRefundRequest.getReference(), AdyenConstants.TEST_REFERENCE);

        testRefundRequest.setMerchantAccount(AdyenConstants.TEST_MERCHANT_ACCOUNT);
        System.assertEquals(testRefundRequest.getMerchantAccount(), AdyenConstants.TEST_MERCHANT_ACCOUNT);

        testRefundRequest.setLineItems(new List<LineItem>{new LineItem()});
        System.assertEquals(1, testRefundRequest.getLineItems().size());

        testRefundRequest.setApplicationInfo(ApplicationInfo.getExample());
        System.assertEquals(testRefundRequest.getApplicationInfo().adyenLibrary.name, '');

    }
}