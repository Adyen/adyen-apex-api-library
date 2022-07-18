/*
* Represents the Checkout capture response (v69) object of the Adyen API
*/

@namespaceAccessible
public with sharing class CheckoutCaptureResponse implements CheckoutModificationResponse {

    /**
    * Get amount
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
    * Get merchant account name
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

    /**
    * Get this capture request psp reference
    * @return pspReference
    */
    @namespaceAccessible
    public String pspReference { get; set; }

    @namespaceAccessible
    public String getPSPReference() {
        return pspReference;
    }

    @namespaceAccessible
    public void setPSPReference(String pspReference) {
        this.pspReference = pspReference;
    }

    /**
    * Get this capture request psp reference
    * @return paymentPspReference
    */
    @namespaceAccessible
    public String paymentPspReference { get; set; }

    @namespaceAccessible
    public String getPaymentPSPReference() {
        return paymentPspReference;
    }

    @namespaceAccessible
    public void setPaymentPSPReference(String paymentPspReference) {
        this.paymentPspReference = paymentPspReference;
    }

    /**
    * Get status
    * @return status
    */
    @namespaceAccessible
    public String status { get; set; }

    @namespaceAccessible
    public String getStatus() {
        return status;
    }

    @namespaceAccessible
    public void setStatus(String status) {
        this.status = status;
    }

    @namespaceAccessible
    public CheckoutCaptureResponse(){}
}
