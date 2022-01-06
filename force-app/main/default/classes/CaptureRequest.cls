/*
* Represents an Adyen Capture Request
*/

@namespaceAccessible
public with sharing class CaptureRequest {
    @namespaceAccessible
    public String additionalData;

    @namespaceAccessible
    public ApplicationInfo applicationInfo;

    @namespaceAccessible
    public String originalReference;

    @namespaceAccessible
    public Amount modificationAmount;

    @namespaceAccessible
    public Amount amount;

    @namespaceAccessible
    public String reference;

    @namespaceAccessible
    public String merchantAccount;

    @namespaceAccessible
    public CaptureRequest(){}
}