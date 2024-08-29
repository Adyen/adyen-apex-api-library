/*
* Represents an Adyen Capture Request
*/
@NamespaceAccessible
public with sharing class CaptureRequest implements ModificationRequest {

    @NamespaceAccessible
    public String additionalData { get; set; }

    @NamespaceAccessible
    public String getAdditionalData() {
        return additionalData;
    }

    @NamespaceAccessible
    public void setAdditionalData(String additionalData) {
        this.additionalData = additionalData;
    }

    @NamespaceAccessible
    public ApplicationInfo applicationInfo { get; set; }

    @NamespaceAccessible
    public ApplicationInfo getApplicationInfo() {
        return applicationInfo;
    }

    @NamespaceAccessible
    public void setApplicationInfo(ApplicationInfo applicationInfo) {
        this.applicationInfo = applicationInfo;
    }

    @NamespaceAccessible
    public String originalReference { get; set; }

    @NamespaceAccessible
    public String getOriginalReference() {
        return originalReference;
    }

    @NamespaceAccessible
    public void setOriginalReference(String originalReference) {
        this.originalReference = originalReference;
    }

    @NamespaceAccessible
    public Amount modificationAmount { get; set; }

    @NamespaceAccessible
    public Amount amount { get; set; }

    @NamespaceAccessible
    public Amount getAmount() {
        return amount;
    }

    @NamespaceAccessible
    public void setAmount(Amount amount) {
        this.amount = amount;
    }

    /**
    * The reference to uniquely identify a payment. This reference is used in all communication with you about the payment status.
    * We recommend using a unique value per payment; however, it is not a requirement.
    * If you need to provide multiple references for a transaction, separate them with hyphens ("-"). Maximum length: 80 characters.
    */
    @NamespaceAccessible
    public String reference { get; set; }

    @NamespaceAccessible
    public String getReference() {
        return reference;
    }

    @NamespaceAccessible
    public void setReference(String reference) {
        this.reference = reference;
    }

    @NamespaceAccessible
    public String merchantAccount { get; set; }

    @NamespaceAccessible
    public String getMerchantAccount() {
        return merchantAccount;
    }

    @NamespaceAccessible
    public void setMerchantAccount(String merchantAccount) {
        this.merchantAccount = merchantAccount;
    }

    @NamespaceAccessible
    public CaptureRequest(){}
}
