@IsTest
private class CancelRequestTest {
    @IsTest
    static void cancelRequestTest() {
        // given
        CancelRequest cancelRequest = new CancelRequest();
        cancelRequest.merchantAccount = 'test';
        cancelRequest.reference = 'abc123';
        CancelRequest cancelRequest2 = new CancelRequest();
        cancelRequest2.merchantAccount = 'test 2';
        cancelRequest2.reference = 'fgh456';
        // then
        Assert.areEqual(cancelRequest, cancelRequest);
        Assert.areEqual(cancelRequest2, cancelRequest2);
        Assert.areNotEqual(cancelRequest, cancelRequest2);
        Assert.areNotEqual(cancelRequest.hashCode(), cancelRequest2.hashCode());
    }
}