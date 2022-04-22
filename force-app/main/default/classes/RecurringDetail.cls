/*
* Adyen Checkout API
* Adyen Checkout API provides a simple and flexible way to initiate and authorise online payments.
* You can use the same integration for payments made with cards (including 3D Secure), mobile wallets, and local payment methods (for example, iDEAL and Sofort).
* This API reference provides information on available endpoints and how to interact with them. To learn more about the API, visit [Checkout documentation](https://docs.adyen.com/checkout).\n\n## Authentication\nEach request to the Checkout API must be signed with an API key. For this, obtain an API Key from your Customer Area, as described in [How to get the API key](https://docs.adyen.com/user-management/how-to-get-the-api-key). Then set this key to the `X-API-Key` header value, for example:\n\n```\ncurl\n-H "Content-Type: application/json" \\n-H "X-API-Key: Your_Checkout_API_key" \\n...\n```\nNote that when going live, you need to generate a new API Key to access the [live endpoints](https://docs.adyen.com/development-resources/live-endpoints).\n\n## Versioning\nCheckout API supports versioning of its endpoints through a version suffix in the endpoint URL. This suffix has the following format: "vXX", where XX is the version number.\n\nFor example:\n```\nhttps://checkout-test.adyen.com/v64/payments\n```
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/

@namespaceAccessible
public with sharing class RecurringDetail {
    /**
    * List of possible brands. For example: visa, mc.
    * @return brands
    */
    @namespaceAccessible
    public List<String> brands { get; set; }

    /**
    * The configuration of the payment method.
    * @return configuration
    */
    @namespaceAccessible
    public Map<String, String> configuration { get; set; }

    /**
    * All input details to be provided to complete the payment with this payment method.
    * @return details
    */
    @namespaceAccessible
    public List<InputDetail> details { get; set; }

    /**
    * The funding source of the payment method.
    */
    @namespaceAccessible
    public enum FundingSourceEnum {
        CREDIT,
        DEBIT
    }

    /**
    * The funding source of the payment method.
    * @return fundingSource
    */
    @namespaceAccessible
    public FundingSourceEnum fundingSource { get; set; }

    /**
    * Get group_x
    * @return group_x
    */
    @namespaceAccessible
    public PaymentMethodGroup group_x { get; set; }

    /**
    * All input details to be provided to complete the payment with this payment method.
    * @return inputDetails
    */
    @namespaceAccessible
    public List<InputDetail> inputDetails { get; set; }

    /**
    * The displayable name of this payment method.
    * @return name
    */
    @namespaceAccessible
    public String name { get; set; }

    /**
    * Echo data required to send in next calls.
    * @return paymentMethodData
    */
    @namespaceAccessible
    public String paymentMethodData { get; set; }

    /**
    * The reference that uniquely identifies the recurring detail.
    * @return recurringDetailReference
    */
    @namespaceAccessible
    public String recurringDetailReference { get; set; }

    /**
    * Get storedDetails
    * @return storedDetails
    */
    @namespaceAccessible
    public StoredDetails storedDetails { get; set; }

    /**
    * Indicates whether this payment method supports tokenization or not.
    * @return supportsRecurring
    */
    @namespaceAccessible
    public Boolean supportsRecurring { get; set; }

    /**
    * The unique payment method code.
    * @return type
    */
    @namespaceAccessible
    public String type { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'group' => 'group_x'
    };

    @namespaceAccessible
    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    @namespaceAccessible
    public RecurringDetail() {
        brands = new List<String>();
        configuration = new Map<String, String>();
        details = new List<InputDetail>();
        inputDetails = new List<InputDetail>();
    }

    @namespaceAccessible
    public static RecurringDetail getExample() {
        RecurringDetail recurringDetail = new RecurringDetail();
        recurringDetail.brands = new List<String>{''};
        recurringDetail.configuration = new Map<String, String>{'key'=>''};
        recurringDetail.details = new List<InputDetail>{InputDetail.getExample()};
        recurringDetail.fundingSource = FundingSourceEnum.CREDIT;
        recurringDetail.group_x = PaymentMethodGroup.getExample();
        recurringDetail.inputDetails = new List<InputDetail>{InputDetail.getExample()};
        recurringDetail.name = '';
        recurringDetail.paymentMethodData = '';
        recurringDetail.recurringDetailReference = '';
        recurringDetail.storedDetails = StoredDetails.getExample();
        recurringDetail.supportsRecurring = true;
        recurringDetail.type = '';
        return recurringDetail;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof RecurringDetail) {
            RecurringDetail recurringDetail = (RecurringDetail) obj;
            return this.brands == recurringDetail.brands
                && this.configuration == recurringDetail.configuration
                && this.details == recurringDetail.details
                && this.fundingSource == recurringDetail.fundingSource
                && this.group_x == recurringDetail.group_x
                && this.inputDetails == recurringDetail.inputDetails
                && this.name == recurringDetail.name
                && this.paymentMethodData == recurringDetail.paymentMethodData
                && this.recurringDetailReference == recurringDetail.recurringDetailReference
                && this.storedDetails == recurringDetail.storedDetails
                && this.supportsRecurring == recurringDetail.supportsRecurring
                && this.type == recurringDetail.type;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (brands == null ? 0 : System.hashCode(brands));
        hashCode = (17 * hashCode) + (configuration == null ? 0 : System.hashCode(configuration));
        hashCode = (17 * hashCode) + (details == null ? 0 : System.hashCode(details));
        hashCode = (17 * hashCode) + (fundingSource == null ? 0 : System.hashCode(fundingSource));
        hashCode = (17 * hashCode) + (group_x == null ? 0 : System.hashCode(group_x));
        hashCode = (17 * hashCode) + (inputDetails == null ? 0 : System.hashCode(inputDetails));
        hashCode = (17 * hashCode) + (name == null ? 0 : System.hashCode(name));
        hashCode = (17 * hashCode) + (paymentMethodData == null ? 0 : System.hashCode(paymentMethodData));
        hashCode = (17 * hashCode) + (recurringDetailReference == null ? 0 : System.hashCode(recurringDetailReference));
        hashCode = (17 * hashCode) + (storedDetails == null ? 0 : System.hashCode(storedDetails));
        hashCode = (17 * hashCode) + (supportsRecurring == null ? 0 : System.hashCode(supportsRecurring));
        hashCode = (17 * hashCode) + (type == null ? 0 : System.hashCode(type));
        return hashCode;
    }
}