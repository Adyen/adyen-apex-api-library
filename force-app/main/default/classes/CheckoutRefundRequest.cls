/*
* Represents an Adyen Checkout Refund Request
*/
@NamespaceAccessible
public with sharing class CheckoutRefundRequest implements CheckoutModificationRequest {

	/**
	* Payment refund amount
	*/
	@NamespaceAccessible
	public Amount amount { get; set; }

	@NamespaceAccessible
	public Amount getAmount() {
		return amount;
	}

	@NamespaceAccessible
	public void setAmount(Amount amount) {
		this.amount = amount;
	}

	/**
	* Application info
	*/
	@NamespaceAccessible
	public ApplicationInfo applicationInfo { get; set; }

	@NamespaceAccessible
	public ApplicationInfo getApplicationInfo() {
		return applicationInfo;
	}

	@NamespaceAccessible
	public void setApplicationInfo(ApplicationInfo applicationInfo) {
		this.applicationInfo = applicationInfo;
	}

	@NamespaceAccessible
	public String capturePspReference { get; set; }

	@NamespaceAccessible
	public List<LineItem> lineItems { get; set; }

	@NamespaceAccessible
	public List<LineItem> getLineItems() {
		return lineItems;
	}

	@NamespaceAccessible
	public void setLineItems(List<LineItem> lineItems) {
		this.lineItems = lineItems;
	}

	/**
	* Merchant account name
	*/
	@NamespaceAccessible
	public String merchantAccount { get; set; }

	@NamespaceAccessible
	public String getMerchantAccount() {
		return merchantAccount;
	}

	@NamespaceAccessible
	public void setMerchantAccount(String merchantAccount) {
		this.merchantAccount = merchantAccount;
	}

	@NamespaceAccessible
	public String merchantRefundReason { get; set; }

	/**
	* The reference to uniquely identify a payment. This reference is used in all communication with you about the payment status. We recommend using a unique value per payment; however, it is not a requirement.\nIf you need to provide multiple references for a transaction, separate them with hyphens ("-").\nMaximum length: 80 characters.
	*/
	@NamespaceAccessible
	public String reference { get; set; }

	@NamespaceAccessible
	public String getReference() {
		return reference;
	}

	@NamespaceAccessible
	public void setReference(String reference) {
		this.reference = reference;
	}

	@NamespaceAccessible
	public String store { get; set; }

	@NamespaceAccessible
	public static CheckoutRefundRequest getExample() {
		CheckoutRefundRequest refundRequest = new CheckoutRefundRequest();
		refundRequest.amount = Amount.getExample();
		refundRequest.applicationInfo = ApplicationInfo.getExample();
		refundRequest.capturePspReference = AdyenConstants.TEST_PSP_REFERENCE;
		refundRequest.lineItems = new List<LineItem>();
		refundRequest.merchantAccount = AdyenConstants.TEST_MERCHANT_ACCOUNT;
		refundRequest.merchantRefundReason = 'Unknown';
		refundRequest.reference = AdyenConstants.TEST_REFERENCE;
		refundRequest.store = 'Test Store';
		return refundRequest;
	}

	@NamespaceAccessible
	public Boolean equals(Object obj) {
		if (obj == null || !(obj instanceof CheckoutRefundRequest)) return false;

		CheckoutRefundRequest other = (CheckoutRefundRequest) obj;
		return this.amount == other.amount
			&& this.applicationInfo == other.applicationInfo
			&& this.capturePspReference == other.capturePspReference
			&& this.lineItems == other.lineItems
			&& this.merchantAccount == other.merchantAccount
			&& this.merchantRefundReason == other.merchantRefundReason
			&& this.reference == other.reference
			&& this.store == other.store;
	}

	@NamespaceAccessible
	public Integer hashCode() {
		List<Object> requestFields = new List<Object>{
			amount,
			applicationInfo,
			capturePspReference,
			lineItems,
			merchantAccount,
			merchantRefundReason,
			reference,
			store
		};
		return ApiLibUtils.computeHashCode(requestFields);
	}


}
