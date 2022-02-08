/*
* Represents the capture response object of the Adyen API
*/
@namespaceAccessible
public with sharing class CancelResponse {

    /**
    * Get errorCode
    * @return errorCode
    */
    @namespaceAccessible
    public String errorCode { get; set; }

    /**
    * Get errorType
    * @return errorType
    */
    @namespaceAccessible
    public String errorType { get; set; }

    /**
    * Get message
    * @return message
    */
    @namespaceAccessible
    public String message { get; set; }

    /**
    * Get merchantAccount
    * @return merchantAccount
    */
    @namespaceAccessible
    public String merchantAccount { get; set; }

    /**
    * Get paymentPspReference
    * @return paymentPspReference
    */
    @namespaceAccessible
    public String paymentPspReference { get; set; }

    /**
    * Get pspReference
    * @return pspReference
    */
    @namespaceAccessible
    public String pspReference { get; set; }

    /**
    * Get reference
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
    public CancelResponse(){}
}