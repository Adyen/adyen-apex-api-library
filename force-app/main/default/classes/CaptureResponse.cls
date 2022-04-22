/*
* Represents the capture response object of the Adyen API
*/

@namespaceAccessible
public with sharing class CaptureResponse {
    @namespaceAccessible
    public String pspReference;

    @namespaceAccessible
    public String response;

    @namespaceAccessible
    public CaptureResponse(){}
}