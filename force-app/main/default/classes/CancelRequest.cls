@NamespaceAccessible
public with sharing class CancelRequest {
    @NamespaceAccessible
    public ApplicationInfo applicationInfo { get; set; }

    @NamespaceAccessible
    public String merchantAccount { get; set; }

    @NamespaceAccessible
    public String reference { get; set; }

    @NamespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof CancelRequest) {
            CancelRequest thatCancelRequest = (CancelRequest) obj;
            return this.applicationInfo == thatCancelRequest.applicationInfo
                && this.merchantAccount.equals(thatCancelRequest.merchantAccount)
                && this.reference.equals(thatCancelRequest.reference);
        }
        return false;
    }

    @NamespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (applicationInfo == null ? 0 : System.hashCode(applicationInfo));
        hashCode = (17 * hashCode) + (merchantAccount == null ? 0 : System.hashCode(merchantAccount));
        hashCode = (17 * hashCode) + (reference == null ? 0 : System.hashCode(reference));
        return hashCode;
    }
}