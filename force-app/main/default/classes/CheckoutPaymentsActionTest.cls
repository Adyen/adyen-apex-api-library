@IsTest
private class CheckoutPaymentsActionTest {
    @IsTest
    static void equalsTest() {
        // given
        CheckoutPaymentsAction action1 = CheckoutPaymentsAction.getExample();
        CheckoutPaymentsAction action2 = CheckoutPaymentsAction.getExample();
        action2.type = 'threeDS2';
        // then
        Assert.areEqual(action1, action1);
        Assert.areNotEqual(action2, action1);
        Assert.areEqual(action1.hashCode(), action1.hashCode());
        Assert.areNotEqual(action2.hashCode(), action1.hashCode());
    }
}