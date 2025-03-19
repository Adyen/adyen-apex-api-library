@IsTest
private class ApiLibUtilsTest {

    @IsTest
    static void computeHashCodeTest() {
        // Given
        List<Object> requestFields = new List<Object>{'TestString', 123, null, true};
        // When
        Integer computedHash = ApiLibUtils.computeHashCode(requestFields);
        // Then
        Assert.isNotNull(computedHash, 'The computed hash code should not be null.');

        // When - recompute for consistency
        Integer recomputedHash = ApiLibUtils.computeHashCode(requestFields);
        // Then
        Assert.areEqual(computedHash, recomputedHash, 'Hash code should be consistent for the same input.');

        // Given - different input
        List<Object> modifiedRequestFields = new List<Object>{'DifferentString', 456, false};
        // When
        Integer differentHash = ApiLibUtils.computeHashCode(modifiedRequestFields);
        // Then
        Assert.areNotEqual(computedHash, differentHash, 'Hash code should differ for different inputs.');

        // Given - empty list
        List<Object> emptyRequestFields = new List<Object>();
        // When
        Integer emptyHash = ApiLibUtils.computeHashCode(emptyRequestFields);
        // Then
        Assert.isNotNull(emptyHash, 'The hash code for an empty list should not be null.');
        Assert.areNotEqual(computedHash, emptyHash, 'The hash code for an empty list should differ from non-empty input.');
    }
}
