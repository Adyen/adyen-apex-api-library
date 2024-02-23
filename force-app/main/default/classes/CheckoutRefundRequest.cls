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
  * Application info
  * @return applicationInfo
  */
  @namespaceAccessible
  public ApplicationInfo applicationInfo { get; set; }

	@namespaceAccessible
  public ApplicationInfo getApplicationInfo() {
    return applicationInfo;
  }

	@namespaceAccessible
  public void setApplicationInfo(ApplicationInfo applicationInfo) {
    this.applicationInfo = applicationInfo;
  }

	@NamespaceAccessible
	public CheckoutRefundRequest(){}

}