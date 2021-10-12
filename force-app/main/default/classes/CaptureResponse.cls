/*
* Represents the capture response object of the Adyen API
*/

@namespaceAccessible
public with sharing class CaptureResponse {
    public String pspReference;
    public String response;
    public CaptureResponse(){}
}