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
public with sharing class PaymentMethodsResponse {
    /**
    * Groups of payment methods.
    * @return groups
    */
    @namespaceAccessible
    public List<PaymentMethodGroup> groups { get; set; }

    /**
    * Detailed list of one-click payment methods.
    * @return oneClickPaymentMethods
    */
    @namespaceAccessible
    public List<RecurringDetail> oneClickPaymentMethods { get; set; }

    /**
    * Detailed list of payment methods required to generate payment forms.
    * @return paymentMethods
    */
    @namespaceAccessible
    public List<PaymentMethod> paymentMethods { get; set; }

    /**
    * List of all stored payment methods.
    * @return storedPaymentMethods
    */
    @namespaceAccessible
    public List<StoredPaymentMethod> storedPaymentMethods { get; set; }

    @namespaceAccessible
    public PaymentMethodsResponse() {
        groups = new List<PaymentMethodGroup>();
        oneClickPaymentMethods = new List<RecurringDetail>();
        paymentMethods = new List<PaymentMethod>();
        storedPaymentMethods = new List<StoredPaymentMethod>();
    }

    @namespaceAccessible
    public static PaymentMethodsResponse getExample() {
        PaymentMethodsResponse paymentMethodsResponse = new PaymentMethodsResponse();
        paymentMethodsResponse.groups = new List<PaymentMethodGroup>{PaymentMethodGroup.getExample()};
        paymentMethodsResponse.oneClickPaymentMethods = new List<RecurringDetail>{RecurringDetail.getExample()};
        paymentMethodsResponse.paymentMethods = new List<PaymentMethod>{PaymentMethod.getExample()};
        paymentMethodsResponse.storedPaymentMethods = new List<StoredPaymentMethod>{StoredPaymentMethod.getExample()};
        return paymentMethodsResponse;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof PaymentMethodsResponse) {
            PaymentMethodsResponse paymentMethodsResponse = (PaymentMethodsResponse) obj;
            return this.groups == paymentMethodsResponse.groups
                && this.oneClickPaymentMethods == paymentMethodsResponse.oneClickPaymentMethods
                && this.paymentMethods == paymentMethodsResponse.paymentMethods
                && this.storedPaymentMethods == paymentMethodsResponse.storedPaymentMethods;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (groups == null ? 0 : System.hashCode(groups));
        hashCode = (17 * hashCode) + (oneClickPaymentMethods == null ? 0 : System.hashCode(oneClickPaymentMethods));
        hashCode = (17 * hashCode) + (paymentMethods == null ? 0 : System.hashCode(paymentMethods));
        hashCode = (17 * hashCode) + (storedPaymentMethods == null ? 0 : System.hashCode(storedPaymentMethods));
        return hashCode;
    }
}