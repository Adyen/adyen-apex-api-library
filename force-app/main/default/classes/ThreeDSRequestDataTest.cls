@IsTest
private class ThreeDSRequestDataTest {
    @IsTest
    static void getExampleTest() {
        ThreeDSRequestData threeDSRequestData = ThreeDSRequestData.getExample();
        Assert.isNotNull(threeDSRequestData);
        Assert.isNotNull(threeDSRequestData.nativeThreeDS);
        Assert.isNotNull(threeDSRequestData.dataOnly);
        Assert.isNotNull(threeDSRequestData.challengeWindowSize);
        Assert.isNotNull(threeDSRequestData.threeDSVersion);
    }
}