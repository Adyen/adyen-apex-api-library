/**
 *  AdyenService will contain all callouts to the Adyen API, as well as build of the body json to be submitted.
 *  Additionally it will parse and serialize any response from the Adyen Payment Gateway.
 */
@namespaceAccessible
public with sharing class AdyenService {

    @TestVisible private final static String  TEST_ENDPOINT          = 'https://bogus.unittest.com'; // Unit test EP
    @TestVisible private final static String  CONTENT_TYPE           = 'application/json';
    
    @namespaceAccessible
    public  final static Integer HTTP_SUCCESS_CODE = 200;
    
    @namespaceAccessible
    public  final static String HTTP_SERVER_ERROR_CODE = '500';
    
    @namespaceAccessible
    public  final static String GATEWAY_ERROR_RESPONSE_CODE = '400';
    
    @namespaceAccessible
    public  final static String APEX_RESERVED_CURRENCY_FIELD = 'currency_x'; // allows deserialization of reserved words.
    
    /**
     *  Serialized version of the Http Response Body received from Adyen to make it easier to work with the JSON.
     */
    @namespaceAccessible
    public class AdyenResponse {
    
        @namespaceAccessible
        public Integer status                       {get;set;} //HTTP Status Code
        @namespaceAccessible
        public String pspReference                  {get;set;} //Recieved from Adyen in case of successful response   
        @namespaceAccessible
        public String response                      {get;set;} //Received from Adyen in case of un-successful request
        @namespaceAccessible
        public String errorCode                     {get;set;} //Adyen error code
        @namespaceAccessible
        public String message                       {get;set;} //Adyen error message
        @namespaceAccessible
        public String errorType                     {get;set;} //Adyen error type
        @namespaceAccessible
        public Boolean operationSuccessful          {get;set;} //Custom Flag denoting if operation was successful or not
        
        @namespaceAccessible
        public String getStatusString() {
            String statusCode = '';
            if(status != null) {
                statusCode = String.valueOf(this.status);
            }
            return statusCode;
        }
    }
    
    /**
     *  Serialized version of the Http Response Body received from Adyen to make it easier to work with the JSON.
     */
    @namespaceAccessible
    public class AdyenNotification {
        @namespaceAccessible
        public String live                                      {get;set;}
        @namespaceAccessible
        public List<NotificationItems> notificationItems        {get;set;}
    }
    
    @namespaceAccessible
    public class NotificationItems {
        @namespaceAccessible
        public NotificationRequestItem NotificationRequestItem  {get;set;}
    }
    
    @namespaceAccessible
    public class NotificationRequestItem {
        @namespaceAccessible
        public Amount amount                                    {get;set;}
        @namespaceAccessible
        public String eventCode                                 {get;set;}
        @namespaceAccessible
        public String eventDate                                 {get;set;}
        @namespaceAccessible
        public String merchantAccountCode                       {get;set;}
        @namespaceAccessible
        public String originalReference                         {get;set;}
        @namespaceAccessible
        public String paymentMethod                             {get;set;}
        @namespaceAccessible
        public String pspReference                              {get;set;}
        @namespaceAccessible
        public String reason                                    {get;set;}
        @namespaceAccessible
        public String success                                   {get;set;}
    }
    
    @namespaceAccessible
    public class Amount {
        @namespaceAccessible
        public Decimal value                                    {get;set;}
        @namespaceAccessible
        public String currency_x                                {get;set;} //  Due to currency being reserved.
    }
    
}