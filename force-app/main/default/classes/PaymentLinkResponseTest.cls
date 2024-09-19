@IsTest
private class PaymentLinkResponseTest {
    @IsTest
    static void getExampleTest() {
        PaymentLinkResponse paymentLinkResponse = PaymentLinkResponse.getExample();
        Assert.isNotNull(paymentLinkResponse);
        Assert.isNotNull(paymentLinkResponse.amount);
        Assert.isNotNull(paymentLinkResponse.merchantAccount);
        Assert.isNotNull(paymentLinkResponse.reference);
        Assert.isNotNull(paymentLinkResponse.url);
        Assert.isNotNull(paymentLinkResponse.id);
    }
}