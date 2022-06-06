/*
* Represents the capture response object of the Adyen API
*/

@namespaceAccessible
public with sharing class CaptureResponse implements ModificationResponse {

    /**
    * Get payment amount
    * @return amount
    */
    @namespaceAccessible
    public Amount amount { get; set; }

    /**
    * Get message
    * @return message
    */
    @namespaceAccessible
    public String message { get; set; }

    @namespaceAccessible
    public String getMessage() {
        return message;
    }

    @namespaceAccessible
    public void setMessage(String message) {
        this.message = message;
    }

    /**
    * Get merchant account name
    * @return merchantAccount
    */
    @namespaceAccessible
    public String merchantAccount { get; set; }

    /**
    * Get the original payment psp reference
    * @return paymentPspReference
    */
    @namespaceAccessible
    public String paymentPspReference { get; set; }

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
    * Get payment reference
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
    public CaptureResponse(){}
}
