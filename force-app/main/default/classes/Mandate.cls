/*
* Adyen Checkout Sessions API
*
* The mandate details to initiate recurring transaction.
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/

@namespaceAccessible
public with sharing class Mandate {
	/**
	* The billing amount (in minor units) of the recurring transactions.
	* @return amount
	*/
	@namespaceAccessible
	//Required
	public String amount {get;set;}

	/**
	* The limitation rule of the billing amount.
	* @return amountRule
	*/
	@namespaceAccessible
	public Constants.AmountRuleEnum amountRule {get;set;}

	/**
	* The rule to specify the period, within which the recurring debit can happen, relative to the mandate recurring date.
	* @return billingAttemptsRule
	*/
	@namespaceAccessible
	public Constants.BillingAttemptsRuleEnum billingAttemptsRule {get;set;}

	/**
	* The number of the day, on which the recurring debit can happen. Should be within the same calendar month as the mandate recurring date.
	* Possible values: 1-31 based on the frequency.
	* @return billingDay
	*/
	@namespaceAccessible
	public String billingDay {get;set;}

	/**
	* End date of the billing plan, in YYYY-MM-DD format.
	* @return endsAt
	*/
	//Required
	@namespaceAccessible
	public String endsAt {get;set;}

	/**
	* The frequency with which a shopper should be charged.
	* @return frequency
	*/
	//Required
	@namespaceAccessible
	public Constants.FrequencyEnum frequency {get;set;}

	/**
	* The message shown by UPI to the shopper on the approval screen.
	* @return remarks
	*/
	@namespaceAccessible
	public Integer remarks {get;set;}

	/**
	* Start date of the billing plan, in YYYY-MM-DD format. By default, the transaction date.
	* @return startsAt
	*/
	@namespaceAccessible
	public String startsAt {get;set;}

	@namespaceAccessible
	public static Mandate getExample() {
		Mandate mandate = new Mandate();
		mandate.amount = '';
		mandate.amountRule = Constants.AmountRuleEnum.AMOUNT_RULE_MAX;
		mandate.billingAttemptsRule = Constants.BillingAttemptsRuleEnum.BILLING_RULE_ON;
		mandate.billingDay = '';
		mandate.frequency = Constants.FrequencyEnum.FREQUENCY_DAILY;
		mandate.endsAt = '';
		mandate.remarks = 10;
		mandate.startsAt = '';
		return mandate;
	}

	@namespaceAccessible
	public Boolean equals(Object obj) {
		if (obj instanceof Mandate) {
			Mandate mandate = (Mandate) obj;
			return this.amount == mandate.amount
				&& this.amountRule == mandate.amountRule
				&& this.billingAttemptsRule == mandate.billingAttemptsRule
				&& this.billingDay == mandate.billingDay
				&& this.frequency == mandate.frequency
				&& this.endsAt == mandate.endsAt
				&& this.remarks == mandate.remarks
				&& this.startsAt == mandate.startsAt;
		}
		return false;
	}
}