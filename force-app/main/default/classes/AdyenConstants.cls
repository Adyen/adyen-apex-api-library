@NamespaceAccessible
public with sharing class AdyenConstants {

    @NamespaceAccessible
    public static final String DEFAULT_ADAPTER_NAME = 'AdyenDefault';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_CANCEL = 'cancellation';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_AUTHORISE = 'authorization';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_CAPTURE_FAILED = 'capture-failed';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_CAPTURE  = 'capture';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_REFUND   = 'refund';

    @NamespaceAccessible
    public static final String NOTIFICATION_REQUEST_TYPE_RECURRING_CONTRACT   = 'recurring_contract';

    @NamespaceAccessible
    public static final String NOTIFICATION_ACCEPTED_RESPONSE     = '[accepted]';

    @NamespaceAccessible
    public static final String NOTIFICATION_RECEIVED_CHECKOUT  = 'received';

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
    public  final static String HTTP_SERVER_ERROR_CODE = '500';
}