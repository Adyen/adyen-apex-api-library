/*
* Represents an Adyen Refund Request
*/
@namespaceAccessible
public with sharing class RefundRequest implements ModificationRequest {

    /**
    * additional data
    * @return additionalData
    */
    @namespaceAccessible
    public String additionalData { get; set; }

    @namespaceAccessible
    public String getAdditionalData() {
        return additionalData;
    }

    @namespaceAccessible
    public void setAdditionalData(String additionalData) {
        this.additionalData = additionalData;
    }

    /**
    * application info
    * @return applicationInfo
    */
    @namespaceAccessible
    public ApplicationInfo applicationInfo { get; set; }

    @namespaceAccessible
    public ApplicationInfo getApplicationInfo() {
        return applicationInfo;
    }

    @namespaceAccessible
    public void setApplicationInfo(ApplicationInfo applicationInfo) {
        this.applicationInfo = applicationInfo;
    }

    /**
    * original payment reference
    * @return originalReference
    */
    @namespaceAccessible
    public String originalReference { get; set; }

    @namespaceAccessible
    public String getOriginalReference() {
        return originalReference;
    }

    @namespaceAccessible
    public void setOriginalReference(String originalReference) {
        this.originalReference = originalReference;
    }

    /**
    * Payment refund amount
    * @return amount
    */
    @namespaceAccessible
    public Amount modificationAmount { get; set; }

    /**
    * Payment refund amount
    * @return amount
    */
    @namespaceAccessible
    public Amount amount { get; set; }

    @namespaceAccessible
    public Amount getAmount() {
        return amount;
    }

    @namespaceAccessible
    public void setAmount(Amount amount) {
        this.amount = amount;
    }

    /**
    * The reference to uniquely identify a payment. This reference is used in all communication with you about the payment status. We recommend using a unique value per payment; however, it is not a requirement.\nIf you need to provide multiple references for a transaction, separate them with hyphens ("-").\nMaximum length: 80 characters.
    * @return reference
    */
    @namespaceAccessible
    public String reference { get; set; }

    @namespaceAccessible
    public String getReference() {
        return reference;
    }

    @namespaceAccessible
    public void setReference(String reference) {
        this.reference = reference;
    }

    /**
    * Merchant account name
    * @return merchantAccount
    */
    @namespaceAccessible
    public String merchantAccount { get; set; }

    @namespaceAccessible
    public String getMerchantAccount() {
        return merchantAccount;
    }

    @namespaceAccessible
    public void setMerchantAccount(String merchantAccount) {
        this.merchantAccount = merchantAccount;
    }

    @namespaceAccessible
    public RefundRequest(){}

}