/*
* Represents an Adyen Webhook Notification Request Item
*/
@namespaceAccessible
public with sharing class NotificationRequestItem {

    @namespaceAccessible
    public Amount amount {get;set;}

    @namespaceAccessible
    public String eventCode {get;set;}

    @namespaceAccessible
    public String eventDate {get;set;}

    @namespaceAccessible
    public String merchantAccountCode {get;set;}

    @namespaceAccessible
    public String paymentMethod {get;set;}

    @namespaceAccessible
    public String originalReference {get;set;}

    @namespaceAccessible
    public String paymentPspReference {get;set;}

    @namespaceAccessible
    public String pspReference {get;set;}

    @namespaceAccessible
    public String reason {get;set;}

    @namespaceAccessible
    public String success {get;set;}

}