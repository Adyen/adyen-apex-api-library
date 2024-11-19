public with sharing class ApiLibUtils {
    public static Integer computeHashCode(List<Object> requestFields) {
        Integer hash = 43;
        for (Object field : requestFields) {
            hash = (17 * hash) + (field == null ? 0 : System.hashCode(field));
        }
        return hash;
    }
}
