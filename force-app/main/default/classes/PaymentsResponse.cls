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
public with sharing class PaymentsResponse {
    /**
    * Action to be taken for completing the payment.
    * @return action
    */
    @namespaceAccessible
    public CheckoutPaymentsAction action { get; set; }

    /**
    * This field contains additional data, which may be required to return in a particular payment response. To choose data fields to be returned, go to **Customer Area** > **Account** > **API URLs** > **Additional data settings**.
    * @return additionalData
    */
    @namespaceAccessible
    public Map<String, String> additionalData { get; set; }

    /**
    * Get amount
    * @return amount
    */
    @namespaceAccessible
    public Amount amount { get; set; }

    /**
    * Contains `threeds2.fingerprint` or `threeds2.challengeToken` values to be used in further calls to `/payments/details` endpoint.
    * @return authentication
    */
    @namespaceAccessible
    public Map<String, String> authentication { get; set; }

    /**
    * When non-empty, contains all the fields that you must submit to the `/payments/details` endpoint.
    * @return details
    */
    @namespaceAccessible
    public List<InputDetail> details { get; set; }

    /**
    * Get fraudResult
    * @return fraudResult
    */
    @namespaceAccessible
    public FraudResult fraudResult { get; set; }

    /**
    * The reference to uniquely identify a payment. This reference is used in all communication with you about the payment status. We recommend using a unique value per payment; however, it is not a requirement.\nIf you need to provide multiple references for a transaction, separate them with hyphens ("-").\nMaximum length: 80 characters.
    * @return merchantReference
    */
    @namespaceAccessible
    public String merchantReference { get; set; }

    /**
    * Contains the details that will be presented to the shopper.
    * @return outputDetails
    */
    @namespaceAccessible
    public Map<String, String> outputDetails { get; set; }

    /**
    * When non-empty, contains a value that you must submit to the `/payments/details` endpoint.
    * @return paymentData
    */
    @namespaceAccessible
    public String paymentData { get; set; }

    /**
    * Adyen\'s 16-character string reference associated with the transaction/request. This value is globally unique; quote it when communicating with us about this request.\n\n> `pspReference` is returned only for non-redirect payment methods.
    * @return pspReference
    */
    @namespaceAccessible
    public String pspReference { get; set; }

    /**
    * Get redirect
    * @return redirect
    */
    @namespaceAccessible
    public Redirect redirect { get; set; }

    /**
    * If the payment\'s authorisation is refused or an error occurs during authorisation, this field holds Adyen\'s mapped reason for the refusal or a description of the error. When a transaction fails, the authorisation response includes `resultCode` and `refusalReason` values.\n\nFor more information, see [Refusal reasons](https://docs.adyen.com/development-resources/refusal-reasons).
    * @return refusalReason
    */
    @namespaceAccessible
    public String refusalReason { get; set; }

    /**
    * Code that specifies the refusal reason. For more information, see [Authorisation refusal reasons](https://docs.adyen.com/development-resources/refusal-reasons).
    * @return refusalReasonCode
    */
    @namespaceAccessible
    public String refusalReasonCode { get; set; }

    /**
    * The result of the payment. For more information, see [Result codes](https://docs.adyen.com/checkout/payment-result-codes).\n\nPossible values:\n\n* **AuthenticationFinished** – The payment has been successfully authenticated with 3D Secure 2. Returned for 3D Secure 2 authentication-only transactions.\n* **AuthenticationNotRequired** – The transaction does not require 3D Secure authentication. Returned for [standalone authentication-only integrations](https://docs.adyen.com/checkout/3d-secure/other-3ds-flows/authentication-only).\n* **Authorised** – The payment was successfully authorised. This state serves as an indicator to proceed with the delivery of goods and services. This is a final state.\n* **Cancelled** – Indicates the payment has been cancelled (either by the shopper or the merchant) before processing was completed. This is a final state.\n* **ChallengeShopper** – The issuer requires further shopper interaction before the payment can be authenticated. Returned for 3D Secure 2 transactions.\n* **Error** – There was an error when the payment was being processed. The reason is given in the `refusalReason` field. This is a final state.\n* **IdentifyShopper** – The issuer requires the shopper\'s device fingerprint before the payment can be authenticated. Returned for 3D Secure 2 transactions.\n* **Pending** – Indicates that it is not possible to obtain the final status of the payment. This can happen if the systems providing final status information for the payment are unavailable, or if the shopper needs to take further action to complete the payment.\n* **PresentToShopper** – Indicates that the response contains additional information that you need to present to a shopper, so that they can use it to complete a payment.\n* **Received** – Indicates the payment has successfully been received by Adyen, and will be processed. This is the initial state for all payments.\n* **RedirectShopper** – Indicates the shopper should be redirected to an external web page or app to complete the authorisation.\n* **Refused** – Indicates the payment was refused. The reason is given in the `refusalReason` field. This is a final state.
    */
    @namespaceAccessible
    public enum ResultCodeEnum {
        AUTHENTICATIONFINISHED,
        AUTHORISED,
        CANCELLED,
        CHALLENGESHOPPER,
        ERROR,
        IDENTIFYSHOPPER,
        PENDING,
        PRESENTTOSHOPPER,
        RECEIVED,
        REDIRECTSHOPPER,
        REFUSED
    }

    /**
    * The result of the payment. For more information, see [Result codes](https://docs.adyen.com/checkout/payment-result-codes).\n\nPossible values:\n\n* **AuthenticationFinished** – The payment has been successfully authenticated with 3D Secure 2. Returned for 3D Secure 2 authentication-only transactions.\n* **AuthenticationNotRequired** – The transaction does not require 3D Secure authentication. Returned for [standalone authentication-only integrations](https://docs.adyen.com/checkout/3d-secure/other-3ds-flows/authentication-only).\n* **Authorised** – The payment was successfully authorised. This state serves as an indicator to proceed with the delivery of goods and services. This is a final state.\n* **Cancelled** – Indicates the payment has been cancelled (either by the shopper or the merchant) before processing was completed. This is a final state.\n* **ChallengeShopper** – The issuer requires further shopper interaction before the payment can be authenticated. Returned for 3D Secure 2 transactions.\n* **Error** – There was an error when the payment was being processed. The reason is given in the `refusalReason` field. This is a final state.\n* **IdentifyShopper** – The issuer requires the shopper\'s device fingerprint before the payment can be authenticated. Returned for 3D Secure 2 transactions.\n* **Pending** – Indicates that it is not possible to obtain the final status of the payment. This can happen if the systems providing final status information for the payment are unavailable, or if the shopper needs to take further action to complete the payment.\n* **PresentToShopper** – Indicates that the response contains additional information that you need to present to a shopper, so that they can use it to complete a payment.\n* **Received** – Indicates the payment has successfully been received by Adyen, and will be processed. This is the initial state for all payments.\n* **RedirectShopper** – Indicates the shopper should be redirected to an external web page or app to complete the authorisation.\n* **Refused** – Indicates the payment was refused. The reason is given in the `refusalReason` field. This is a final state.
    * @return resultCode
    */
    @namespaceAccessible
    public ResultCodeEnum resultCode { get; set; }

    @namespaceAccessible
    public PaymentsResponse() {
        authentication = new Map<String, String>();
        details = new List<InputDetail>();
        outputDetails = new Map<String, String>();
    }

    @namespaceAccessible
    public static PaymentsResponse getExample() {
        PaymentsResponse paymentsResponse = new PaymentsResponse();
        paymentsResponse.amount = Amount.getExample();
        paymentsResponse.action = CheckoutPaymentsAction.getExample();
        paymentsResponse.additionalData = new Map<String, String>{'key'=>''};
        paymentsResponse.authentication = new Map<String, String>{'key'=>''};
        paymentsResponse.details = new List<InputDetail>{InputDetail.getExample()};
        paymentsResponse.fraudResult = FraudResult.getExample();
        paymentsResponse.merchantReference = '';
        paymentsResponse.outputDetails = new Map<String, String>{'key'=>''};
        paymentsResponse.paymentData = '';
        paymentsResponse.pspReference = '';
        paymentsResponse.redirect = Redirect.getExample();
        paymentsResponse.refusalReason = '';
        paymentsResponse.refusalReasonCode = '';
        paymentsResponse.resultCode = ResultCodeEnum.AUTHENTICATIONFINISHED;
        return paymentsResponse;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof PaymentsResponse) {
            PaymentsResponse paymentsResponse = (PaymentsResponse) obj;
            return this.action == paymentsResponse.action
                && this.additionalData == paymentsResponse.additionalData
                && this.amount == paymentsResponse.amount
                && this.authentication == paymentsResponse.authentication
                && this.details == paymentsResponse.details
                && this.fraudResult == paymentsResponse.fraudResult
                && this.merchantReference == paymentsResponse.merchantReference
                && this.outputDetails == paymentsResponse.outputDetails
                && this.paymentData == paymentsResponse.paymentData
                && this.pspReference == paymentsResponse.pspReference
                && this.redirect == paymentsResponse.redirect
                && this.refusalReason == paymentsResponse.refusalReason
                && this.refusalReasonCode == paymentsResponse.refusalReasonCode
                && this.resultCode == paymentsResponse.resultCode;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (action == null ? 0 : System.hashCode(action));
        hashCode = (17 * hashCode) + (additionalData == null ? 0 : System.hashCode(additionalData));
        hashCode = (17 * hashCode) + (amount == null ? 0 : System.hashCode(amount));
        hashCode = (17 * hashCode) + (authentication == null ? 0 : System.hashCode(authentication));
        hashCode = (17 * hashCode) + (details == null ? 0 : System.hashCode(details));
        hashCode = (17 * hashCode) + (fraudResult == null ? 0 : System.hashCode(fraudResult));
        hashCode = (17 * hashCode) + (merchantReference == null ? 0 : System.hashCode(merchantReference));
        hashCode = (17 * hashCode) + (outputDetails == null ? 0 : System.hashCode(outputDetails));
        hashCode = (17 * hashCode) + (paymentData == null ? 0 : System.hashCode(paymentData));
        hashCode = (17 * hashCode) + (pspReference == null ? 0 : System.hashCode(pspReference));
        hashCode = (17 * hashCode) + (redirect == null ? 0 : System.hashCode(redirect));
        hashCode = (17 * hashCode) + (refusalReason == null ? 0 : System.hashCode(refusalReason));
        hashCode = (17 * hashCode) + (refusalReasonCode == null ? 0 : System.hashCode(refusalReasonCode));
        hashCode = (17 * hashCode) + (resultCode == null ? 0 : System.hashCode(resultCode));
        return hashCode;
    }
}