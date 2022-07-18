/*
* Represents an Adyen Checkout Refund Request
*/
@namespaceAccessible
public with sharing class CheckoutRefundRequest implements CheckoutModificationRequest {

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
    public CheckoutRefundRequest(){}

}