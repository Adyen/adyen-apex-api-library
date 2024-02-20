/*
* Adyen Checkout Sessions API
*
* Any risk-related settings to apply to the payment.
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/

@namespaceAccessible
public with sharing class RiskData {
	/**
	* Contains client-side data, like the device fingerprint, cookies, and specific browser settings.
	* @return clientData
	*/
	@namespaceAccessible
	public String clientData { get; set; }

	/**
	* Any custom fields used as part of the input to configured risk rules.
	* @return customFields
	*/
	@namespaceAccessible
	public Map<String, String> customFields {get;set;}

	/**
	* An integer value that is added to the normal fraud score. The value can be either positive or negative.
	* @return fraudOffset
	*/
	@namespaceAccessible
	public Integer fraudOffset {get;set;}

	/**
	* The risk profile to assign to this payment. When left empty, the merchant-level account's default risk profile will be applied.
	* @return profileReference
	*/
	@namespaceAccessible
	public String profileReference {get;set;}

	@namespaceAccessible
	public static RiskData getExample() {
		RiskData riskData = new RiskData();
		riskData.clientData = '';
		riskData.customFields = new Map<String, String>();
		riskData.fraudOffset = 1;
		riskData.profileReference = '';
		return riskData;
	}

	@namespaceAccessible
	public Boolean equals(Object obj) {
		if (obj instanceof RiskData) {
			RiskData riskData = (RiskData) obj;
			return this.clientData == riskData.clientData
				&& this.customFields == riskData.customFields
				&& this.fraudOffset == riskData.fraudOffset
				&& this.profileReference == riskData.profileReference;
		}
		return false;
	}

	@namespaceAccessible
	public Integer hashCode() {
		Integer hashCode = 43;
		hashCode = (17 * hashCode) + (clientData == null ? 0 : System.hashCode(clientData));
		hashCode = (17 * hashCode) + (customFields == null ? 0 : System.hashCode(customFields));
		hashCode = (17 * hashCode) + (fraudOffset == null ? 0 : System.hashCode(fraudOffset));
		hashCode = (17 * hashCode) + (profileReference == null ? 0 : System.hashCode(profileReference));
		return hashCode;
	}
}