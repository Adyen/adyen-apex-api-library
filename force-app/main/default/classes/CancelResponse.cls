/*
* Represents the capture response object of the Adyen API
*/

@namespaceAccessible
public with sharing class CancelResponse {

    @namespaceAccessible
    public String errorCode;

    @namespaceAccessible
    public String errorType;

    @namespaceAccessible
    public String message;

    @namespaceAccessible
    public String merchantAccount;

    @namespaceAccessible
    public String paymentPspReference;

    @namespaceAccessible
    public String pspReference;

    @namespaceAccessible
    public String reference;

    @namespaceAccessible
    public String status;

    @namespaceAccessible
    public CancelResponse(){}
}