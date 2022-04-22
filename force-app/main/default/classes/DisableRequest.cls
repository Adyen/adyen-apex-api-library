@namespaceAccessible
public with sharing class DisableRequest {
    /**
    * The shopperReference from Stored payment.
    * @return shopperReference
    */
    @namespaceAccessible
    public String shopperReference { get; set; }
    
    /**
    * The recurringDetailReference of Stored payment.
    * @return recurringDetailReference
    */
    @namespaceAccessible
    public String recurringDetailReference { get; set; }
    
    /**
    * The name of the Merchant account
    * @return merchantAccount
    */
    @namespaceAccessible
    public String merchantAccount { get; set; }
    
    @namespaceAccessible
    public static DisableRequest getExample() {
        DisableRequest disableRequest = new DisableRequest();
        disableRequest.shopperReference = '';
        disableRequest.recurringDetailReference = '';
        disableRequest.merchantAccount = '';
        return disableRequest;
    }
    
    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof DisableRequest) {
            DisableRequest disableRequest = (DisableRequest) obj;
            return this.shopperReference == disableRequest.shopperReference
                && this.recurringDetailReference == disableRequest.recurringDetailReference
                && this.merchantAccount == disableRequest.merchantAccount;
        }
        return false;
    }
    
    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (shopperReference == null ? 0 : System.hashCode(shopperReference));
        hashCode = (17 * hashCode) + (recurringDetailReference == null ? 0 : System.hashCode(recurringDetailReference));
        hashCode = (17 * hashCode) + (merchantAccount == null ? 0 : System.hashCode(merchantAccount));
        return hashCode;
    }
}