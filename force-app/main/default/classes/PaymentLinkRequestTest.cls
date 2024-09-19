 @IsTest
 private class PaymentLinkRequestTest {
     @IsTest
     static void getExampleTest() {
        PaymentLinkRequest paymentLinkRequest = PaymentLinkRequest.getExample();
         Assert.isNotNull(paymentLinkRequest);
         Assert.isNotNull(paymentLinkRequest.amount);
         Assert.isNotNull(paymentLinkRequest.merchantAccount);
         Assert.isNotNull(paymentLinkRequest.reference);
     }
 }