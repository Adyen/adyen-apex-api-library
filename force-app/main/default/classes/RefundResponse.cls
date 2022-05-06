/*
* Represents the refund response object of the Adyen API
*/

@namespaceAccessible
public with sharing class RefundResponse implements ModificationResponse {

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
    * Get this refund request psp reference
    * @return pspReference
    */
    @namespaceAccessible
    public String pspReference { get; set; }

    /**
    * Get payment reference
    * @return reference
    */
    @namespaceAccessible
    public String reference { get; set; }

    /**
    * Get status
    * @return status
    */
    @namespaceAccessible
    public String status { get; set; }

    @namespaceAccessible
    public RefundResponse(){}

}