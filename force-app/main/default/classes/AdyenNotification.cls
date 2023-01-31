/*
* Represents an incoming Adyen Webhook Notification
* https://docs.adyen.com/development-resources/webhooks/understand-notifications
*/
@namespaceAccessible
public with sharing class AdyenNotification {

    @namespaceAccessible
    public String live {get;set;}

    @namespaceAccessible
    public List<NotificationItems> notificationItems {get;set;}

}