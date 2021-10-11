/*
* Represents an Adyen Capture Request
*/

@namespaceAccessible
public with sharing class CaptureRequest {
    public String originalReference;
    public Amount modificationAmount;
    public String reference;
    public String merchantAccount;
    public CaptureRequest(){}
}