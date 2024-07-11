@NamespaceAccessible
public with sharing class AdyenConstants {

    @NamespaceAccessible
    public static final String DEFAULT_ADAPTER_NAME = 'AdyenDefault';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_CANCEL = 'CANCELLATION';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_AUTHORISE = 'AUTHORISATION';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_CAPTURE_FAILED = 'CAPTURE_FAILED';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_REFUND_FAILED = 'REFUND_FAILED';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_CAPTURE = 'CAPTURE';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_REFUND = 'REFUND';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_RECURRING_CONTRACT = 'RECURRING_CONTRACT';

    @NamespaceAccessible
    public static final String NOTIFICATION_ACCEPTED_RESPONSE = '[accepted]';

    @NamespaceAccessible
    public static final String NOTIFICATION_RECEIVED_CHECKOUT = 'received';

    @NamespaceAccessible
    public static final String TEST_MERCHANT_ACCOUNT = 'TEST_MERCHANT_ACCOUNT';

    @NamespaceAccessible
    public static final String TEST_REFERENCE = 'TEST_REFERENCE';

    @NamespaceAccessible
    public static final String TEST_STATUS = 'TEST_STATUS';

    @NamespaceAccessible
    public static final String TEST_PSP_REFERENCE = 'TEST_PSP_REFERENCE';

    @NamespaceAccessible
    public static final String TEST_PAYMENT_PSP_REFERENCE = 'TEST_PAYMENT_PSP_REFERENCE';

    @NamespaceAccessible
    public static final CommercePayments.SalesforceResultCodeInfo SUCCESS_SALESFORCE_RESULT_CODE_INFO =
            new CommercePayments.SalesforceResultCodeInfo(CommercePayments.SalesforceResultCode.Success);

    @NamespaceAccessible
    public static final CommercePayments.SalesforceResultCodeInfo DECLINE_SALESFORCE_RESULT_CODE_INFO =
            new CommercePayments.SalesforceResultCodeInfo(CommercePayments.SalesforceResultCode.Decline);

    @NamespaceAccessible
    public static final CommercePayments.SalesforceResultCodeInfo SYSTEM_ERROR_SALESFORCE_RESULT_CODE_INFO =
            new CommercePayments.SalesforceResultCodeInfo(CommercePayments.SalesforceResultCode.SystemError);

    @NamespaceAccessible
    public static final CommercePayments.SalesforceResultCodeInfo VALIDATION_ERROR_SALESFORCE_RESULT_CODE_INFO =
            new CommercePayments.SalesforceResultCodeInfo(CommercePayments.SalesforceResultCode.ValidationError);

	  @NamespaceAccessible
    public static final Integer HTTP_SUCCESS_CODE = 200;

    @NamespaceAccessible
    public static final Integer HTTP_ERROR_CODE = 400;

    @NamespaceAccessible
    public static final Integer HTTP_SERVER_ERROR_CODE = 500;
}