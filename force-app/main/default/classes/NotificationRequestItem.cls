/*
* Represents an Adyen Webhook Notification Request Item
*/
@NamespaceAccessible
public with sharing class NotificationRequestItem {

    @NamespaceAccessible
    public Amount amount {get;set;}

    @NamespaceAccessible
    public String eventCode {get;set;}

    @NamespaceAccessible
    public String eventDate {get;set;}

    @NamespaceAccessible
    public String merchantAccountCode {get;set;}

    @NamespaceAccessible
    public String paymentMethod {get;set;}

    @NamespaceAccessible
    public String originalReference {get;set;}

    @NamespaceAccessible
    public String paymentPspReference {get;set;}

    @NamespaceAccessible
    public String pspReference {get;set;}

    @NamespaceAccessible
    public String reason {get;set;}

    @NamespaceAccessible
    public String success {get;set;}

    @NamespaceAccessible
    public Map<String,String> additionalData {get;set;}
}