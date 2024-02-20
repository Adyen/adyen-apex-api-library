/*
* Adyen Checkout Sessions API
*
* Creates a payment session for Web Drop-in and Web Components integrations.
* The response contains encrypted payment session data. The front end then uses the session data to make any required server-side calls for the payment flow.
* You get the payment outcome asynchronously, in an AUTHORISATION webhook.
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/
@namespaceAccessible
public class SessionsResponse {
 /**
	* Shopper account information for 3D Secure 2.
	* @return accountInfo
	*/
	@namespaceAccessible
	public ShopperAccountInfo accountInfo {get;set;}

	/**
	* If you want a BIN or card verification request to use a non-zero value, assign this value to additionalAmount (while the amount must be still set to 0 to trigger BIN or card verification). Required to be in the same currency as the amount.
	* @return additionalAmount
	*/
	@namespaceAccessible
	public Amount additionalAmount {get;set;}

	/**
	* List of payment methods to be presented to the shopper.
	* @return allowedPaymentMethods
	*/
	@namespaceAccessible
	public List<String> allowedPaymentMethods {get;set;}

	/**
	* The amount of the payment.
	* @return amount
	*/
	//Required
	@namespaceAccessible
	public Amount amount {get;set;}

	/**
	* Information about your application.
	* @return applicationInfo
	*/
	@namespaceAccessible
	public ApplicationInfo applicationInfo {get;set;}

	/**
	* The address where to send the invoice.
	* @return billingAddress
	*/
	@namespaceAccessible
	public Address billingAddress;

	/**
	* List of payment methods to be hidden from the shopper.
	* @return blockedPaymentMethods
	*/
	@namespaceAccessible
	public List<String> blockedPaymentMethods {get;set;}

	/**
	* The delay between the authorisation and scheduled auto-capture, specified in hours.
	* @return captureDelayHours
	*/
	@namespaceAccessible
	public Integer captureDelayHours {get;set;}

	/**
	* The platform where a payment transaction takes place. This field is optional for filtering out payment methods that are only available on specific platforms. If this value is not set, then we will try to infer it from the sdkVersion or token.
	* @return channel
	*/
	@namespaceAccessible
	public Constants.ChannelEnum channel {get;set;}

	/**
	* Information regarding the company.
	* @return channel
	*/
	@namespaceAccessible
	public Company company {get;set;}

	/**
	* The shopper's two-letter country code.
	* @return countryCode
	*/
	@namespaceAccessible
	public String countryCode {get;set;}

	/**
	* The shopper's date of birth.
	* @return dateOfBirth
	*/
	@namespaceAccessible
	public String dateOfBirth {get;set;}

	/**
	* The address where the purchased goods should be delivered.
	* @return deliveryAddress
	*/
	@namespaceAccessible
	public Address deliveryAddress {get;set;}

	/**
	* When true and shopperReference is provided, the shopper will be asked if the payment details should be stored for future one-click payments.
	* @return enableOneClick
	*/
	@namespaceAccessible
	public Boolean enableOneClick {get;set;}

	/**
	* When true and shopperReference is provided, the payment details will be tokenized for payouts.
	* @return enablePayOut
	*/
	@namespaceAccessible
	public Boolean enablePayOut {get;set;}

	/**
	* When true and shopperReference is provided, the payment details will be tokenized for recurring payments.
	* @return enableRecurring
	*/
	@namespaceAccessible
	public Boolean enableRecurring {get;set;}

	/**
	* The date the session expires in ISO8601 format. When not specified, the expiry date is set to 1 hour after session creation.
	* You cannot set the session expiry to more than 24 hours after session creation.
	* @return expiresAt
	*/
	@namespaceAccessible
	public String expiresAt {get;set;}

	/**
	* A unique identifier of the session.
	* @return id
	*/
	@namespaceAccessible
	public String id {get;set;}

	/**
	* Price and product information about the purchased items, to be included on the invoice sent to the shopper.
	* @return lineItems
	*/
	@namespaceAccessible
	public List<LineItems> lineItems {get;set;}

	 /**
	* The mandate details to initiate recurring transaction.
	* @return mandate
	*/
	@namespaceAccessible
	public Mandate mandate {get;set;}

	/**
	* The merchant category code (MCC) is a four-digit number, which relates to a particular market segment.
	* This code reflects the predominant activity that is conducted by the merchant.
	* @return mcc
	*/
	@namespaceAccessible
	public String mcc {get;set;}

	/**
	* The merchant account identifier, with which you want to process the transaction.
	* @return merchantAccount
	*/
	//Required
	@namespaceAccessible
	public String merchantAccount {get;set;}

	/**
	* This reference allows linking multiple transactions to each other for reporting purposes (i.e. order auth-rate). The reference should be unique per billing cycle.
	* The same merchant order reference should never be reused after the first authorised attempt. If used, this field should be supplied for all incoming authorisations
	* @return merchantOrderReference
	*/
	@namespaceAccessible
	public String merchantOrderReference {get;set;}

	/**
	* Metadata consists of entries, each of which includes a key and a value. Limits:
	* Maximum 20 key-value pairs per request.* Maximum 20 characters per key.
	* Maximum 80 characters per value.
	* @return metaData
	*/
	@namespaceAccessible
	public Map<String, String> metaData {get;set;}

	/**
	* Authentication data produced by an MPI (Mastercard SecureCode, Visa Secure, or Cartes Bancaires).
	* @return mpiData
	*/
	@namespaceAccessible
	public MPIData mpiData {get;set;}

	/**
	* Date after which no further authorisations shall be performed. Only for 3D Secure 2.
	* @return recurringExpiry
	*/
	@namespaceAccessible
	public String recurringExpiry {get;set;}

	/**
	* Minimum number of days between authorisations. Only for 3D Secure 2.
	* @return recurringFrequency
	*/
	@namespaceAccessible
	public String recurringFrequency {get;set;}

	/**
	* Defines a recurring payment type.
	* @return recurringProcessingModel
	*/
	@namespaceAccessible
	public Constants.RecurringProcessingModelEnum recurringProcessingModel { get; set; }

	/**
	* Specifies the redirect method (GET or POST) when redirecting back from the issuer.
	* @return redirectFromIssuerMethod
	*/
	@namespaceAccessible
	public String redirectFromIssuerMethod { get; set; }

	/**
	* Specifies the redirect method (GET or POST) when redirecting to the issuer.
	* @return redirectToIssuerMethod
	*/
	@namespaceAccessible
	public String redirectToIssuerMethod { get; set; }

	 /**
	* The reference to uniquely identify a payment.
	* @return reference
	*/
	//Required
	@namespaceAccessible
	public String reference { get; set; }

	/**
	* The URL to return to when a redirect payment is completed.
	* @return returnUrl
	*/
	//Required
	@namespaceAccessible
	public String returnUrl { get; set; }

	/**
	* Any risk-related settings to apply to the payment.
	* @return riskData
	*/
	@namespaceAccessible
	public RiskData riskData {get;set;}

	/**
	* The shopper's email address.
	* @return shopperEmail
	*/
	@namespaceAccessible
	public String shopperEmail { get; set; }

	/**
	* The shopper's IP address.
	* In general, we recommend that you provide this data, as it is used in a number of risk checks (for instance, number of payment attempts or location-based checks).
	* @return shopperIP
	*/
	@namespaceAccessible
	public String shopperIP { get; set; }

	/**
	* Specifies the sales channel, through which the shopper gives their card details, and whether the shopper is a returning customer.
	* @return shopperInteraction
	*/
	@namespaceAccessible
	public Constants.ShopperInteractionEnum shopperInteraction { get; set; }

	/**
	* The combination of a language code and a country code to specify the language to be used in the payment.
	* @return shopperLocale
	*/
	@namespaceAccessible
	public String shopperLocale { get; set; }

	/**
	* The shopper's full name. This object is required for some payment methods such as AfterPay, Klarna, or if you're enrolled in the PayPal Seller Protection program.
	* @return shopperName
	*/
	//Required
	@namespaceAccessible
	public Name shopperName { get; set; }

	/**
	* Your reference to uniquely identify this shopper, for example user ID or account ID. Minimum length: 3 characters.
	* @return shopperReference
	*/
	@namespaceAccessible
	public String shopperReference {get;set;}

	/**
	* The text to be shown on the shopper's bank statement. To enable this field, contact our Support Team.
	* We recommend sending a maximum of 22 characters, otherwise banks might truncate the string.
	* @return shopperStatement
	*/
	@namespaceAccessible
	public String shopperStatement {get;set;}

	/**
	* The shopper's social security number.
	* @return socialSecurityNumber
	*/
	@namespaceAccessible
	public String socialSecurityNumber {get;set;}

	/**
	* Boolean value indicating whether the card payment method should be split into separate debit and credit options.
	* @return splitCardFundingSources
	*/
	@namespaceAccessible
	public Boolean splitCardFundingSources {get;set;}

	/**
	* An array of objects specifying how the payment should be split when using Adyen for Platforms or Issuing.
	* @return splits
	*/
	@namespaceAccessible
	public List<Splits> splits {get;set;}

	/**
	* The ecommerce or point-of-sale store that is processing the payment.
	* @return store
	*/
	@namespaceAccessible
	public String store {get;set;}

	/**
	* When this is set to true and the shopperReference is provided, the payment details will be stored.
	* @return storePaymentMethod
	*/
	@namespaceAccessible
	public Boolean storePaymentMethod {get;set;}

	/**
	* The shopper's telephone number.
	* @return telephoneNumber
	*/
	@namespaceAccessible
	public String telephoneNumber {get;set;}

	/**
	* If set to true, you will only perform the 3D Secure 2 authentication, and not the payment authorisation.
	* @return threeDSAuthenticationOnly
	*/
	@namespaceAccessible
	public Boolean threeDSAuthenticationOnly {get;set;}

	/**
	* Set to true if the payment should be routed to a trusted MID.
	* @return trustedShopper
	*/
	@namespaceAccessible
	public Boolean trustedShopper {get;set;}

	@namespaceAccessible
	public static SessionsResponse getExample() {
		SessionsResponse sessionsResponse = new SessionsResponse();
		sessionsResponse.accountInfo = ShopperAccountInfo.getExample();
		sessionsResponse.additionalAmount = Amount.getExample();
		sessionsResponse.allowedPaymentMethods = new List<String>{''};
		sessionsResponse.amount = Amount.getExample();
		sessionsResponse.applicationInfo = ApplicationInfo.getExample();
		sessionsResponse.billingAddress = Address.getExample();
		sessionsResponse.blockedPaymentMethods = new List<String>{''};
		sessionsResponse.captureDelayHours = 1;
		sessionsResponse.channel = Constants.ChannelEnum.CHANNEL_WEB;
		sessionsResponse.company = Company.getExample();
		sessionsResponse.deliveryAddress = Address.getExample();
		sessionsResponse.enableOneClick = true;
		sessionsResponse.enablePayOut = false;
		sessionsResponse.enableRecurring = true;
		sessionsResponse.expiresAt = '';
		sessionsResponse.lineItems = new List<LineItems>{};
		sessionsResponse.mandate = Mandate.getExample();
		sessionsResponse.mcc = '';
		sessionsResponse.merchantAccount = '';
		sessionsResponse.merchantOrderReference = '';
		sessionsResponse.metadata = new Map<String, String>();
		sessionsResponse.mpiData = MPIData.getExample();
		sessionsResponse.recurringExpiry = '';
		sessionsResponse.recurringFrequency = '';
		sessionsResponse.recurringProcessingModel = Constants.RecurringProcessingModelEnum.RECURRING_PROCESS_MODEL_CARD_ON_FILE;
		sessionsResponse.redirectFromIssuerMethod = '';
		sessionsResponse.redirectToIssuerMethod = '';
		sessionsResponse.reference = '';
		sessionsResponse.returnUrl = '';
		sessionsResponse.riskData = RiskData.getExample();
		sessionsResponse.shopperEmail = '';
		sessionsResponse.shopperIP = '';
		sessionsResponse.shopperInteraction = Constants.ShopperInteractionEnum.SHOPPER_INTERACTION_POS;
		sessionsResponse.shopperLocale = '';
		sessionsResponse.shopperName = Name.getExample();
		sessionsResponse.shopperReference = '';
		sessionsResponse.shopperStatement = '';
		sessionsResponse.socialSecurityNumber = '';
		sessionsResponse.splitCardFundingSources = true;
		sessionsResponse.splits = new List<Splits>{};
		sessionsResponse.store = '';
		sessionsResponse.storePaymentMethod = false;
		sessionsResponse.telephoneNumber = '';
		sessionsResponse.threeDSAuthenticationOnly = true;
		sessionsResponse.trustedShopper = false;
		return sessionsResponse;
	}
}