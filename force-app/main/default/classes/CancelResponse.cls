/*
* Represents the capture response object of the Adyen API
*/
@NamespaceAccessible
public with sharing class CancelResponse {

    @NamespaceAccessible
    public String errorCode { get; set; }

    @NamespaceAccessible
    public String errorType { get; set; }

    @NamespaceAccessible
    public String message { get; set; }

    @NamespaceAccessible
    public String merchantAccount { get; set; }

    @NamespaceAccessible
    public String paymentPspReference { get; set; }

    @NamespaceAccessible
    public String pspReference { get; set; }

    @NamespaceAccessible
    public String reference { get; set; }

    @NamespaceAccessible
    public String status { get; set; }

    @NamespaceAccessible
    public CancelResponse() {}
}