@namespaceAccessible
public with sharing class AdyenConstants {

    @namespaceAccessible
    public static final String DEFAULT_ADAPTER_NAME = 'AdyenDefault';

    @namespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_CANCEL = 'cancellation';

    @namespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_AUTHORISE = 'authorization';

    @namespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_CAPTURE_FAILED = 'capture-failed';

    @namespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_CAPTURE  = 'capture';

    @namespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_REFUND   = 'refund';

    @namespaceAccessible
    public static final String NOTIFICATION_ACCEPTED_RESPONSE     = '[accepted]';

    @namespaceAccessible
    public static final String NOTIFICATION_RECEIVED_CHECKOUT  = 'received';

    @namespaceAccessible
    public static final String TEST_MERCHANT_ACCOUNT = 'TEST_MERCHANT_ACCOUNT';

    @namespaceAccessible
    public static final String TEST_REFERENCE = 'TEST_REFERENCE';

    @namespaceAccessible
    public static final String TEST_STATUS = 'TEST_STATUS';

    @namespaceAccessible
    public static final String TEST_PSP_REFERENCE = 'TEST_PSP_REFERENCE';

    @namespaceAccessible
    public static final String TEST_PAYMENT_PSP_REFERENCE = 'TEST_PAYMENT_PSP_REFERENCE';

    @namespaceAccessible
    public static final CommercePayments.SalesforceResultCodeInfo SUCCESS_SALESFORCE_RESULT_CODE_INFO =
            new CommercePayments.SalesforceResultCodeInfo(CommercePayments.SalesforceResultCode.Success);

    @namespaceAccessible
    public static final CommercePayments.SalesforceResultCodeInfo DECLINE_SALESFORCE_RESULT_CODE_INFO =
            new CommercePayments.SalesforceResultCodeInfo(CommercePayments.SalesforceResultCode.Decline);

    @namespaceAccessible
    public static final CommercePayments.SalesforceResultCodeInfo SYSTEM_ERROR_SALESFORCE_RESULT_CODE_INFO =
            new CommercePayments.SalesforceResultCodeInfo(CommercePayments.SalesforceResultCode.SystemError);

    @namespaceAccessible
    public static final CommercePayments.SalesforceResultCodeInfo VALIDATION_ERROR_SALESFORCE_RESULT_CODE_INFO =
            new CommercePayments.SalesforceResultCodeInfo(CommercePayments.SalesforceResultCode.ValidationError);

	@namespaceAccessible
     public static final Integer HTTP_SUCCESS_CODE      = 200;

    @namespaceAccessible
     public static final Integer HTTP_ERROR_CODE        = 400;

      @namespaceAccessible
      public  final static String HTTP_SERVER_ERROR_CODE = '500';
}