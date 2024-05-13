@IsTest
public class ACHDetailsTest {
    @IsTest
    private static void ACHDetailsEqualityTest() {
        // given
        ACHDetails achTest1 = ACHDetails.getExample();
        ACHDetails achTest2 = ACHDetails.getExample();
        ACHDetails achTest3 = ACHDetails.getExample();
        achTest3.setType('another type');
        // then
        Assert.areEqual(achTest1, achTest2);
        Assert.areEqual(achTest1.hashCode(), achTest2.hashCode());
        Assert.areNotEqual(achTest1, achTest3);
        Assert.areNotEqual(achTest1.hashCode(), achTest3.hashCode());
    }
}