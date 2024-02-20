/*
* Adyen Checkout Sessions API
* Creates a payment session for Web Drop-in and Web Components integrations.
* Shopper account information for 3D Secure 2
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/

@namespaceAccessible
public with sharing class ShopperAccountInfo {

    /**
    * Indicator for the length of time since this shopper account was created in the merchant's environment.
    * @return accountAgeIndicator
    */
    @namespaceAccessible
    public Constants.AccountAgeEnum accountAgeIndicator { get; set; }

    /**
    * Date when the shopper's account was last changed.
    * @return accountChangeDate
    */
    public String accountChangeDate { get; set; }

    /**
    * Indicator for the length of time since the shopper's account was last updated.
    * @return accountChangeIndicator
    */
    @namespaceAccessible
    public Constants.AccountChangeEnum accountChangeIndicator { get; set; }

    /**
    * Date when the shopper's account was created.
    * @return accountCreationDate
    */
    @namespaceAccessible
    public String accountCreationDate { get; set; }

    /**
    * Indicates the type of account.
    * @return accountType
    */
    @namespaceAccessible
    public Constants.AccountTypeEnum accountType { get; set; }

    /**
    * Number of attempts the shopper tried to add a card to their account in the last day.
    * @return addCardAttemptsDay
    */
    @namespaceAccessible
    public Integer addCardAttemptsDay {get; set; }

    /**
    * Date the selected delivery address was first used.
    * @return deliveryAddressUsageDate
    */
    @namespaceAccessible
    public String deliveryAddressUsageDate {get; set; }

    /**
    * Indicator for the length of time since this delivery address was first used.
    * @return deliveryAddressUsageIndicator
    */
    @namespaceAccessible
    public Constants.DeliveryAddressUsageIndicatorEnum deliveryAddressUsageIndicator { get; set; }

    /**
    * Date when the shopper last changed their password.
    * @return passwordChangeDate
    */
    @namespaceAccessible
    public String passwordChangeDate { get; set; }

    /**
    * Indicator when the shopper has changed their password.
    * @return passwordChangeIndicator
    */
    @namespaceAccessible
    public Constants.PasswordChangeIndicatorEnum passwordChangeIndicator { get; set; }

    /**
    * Number of all transactions (successful and abandoned) from this shopper in the past 24 hours.
    * @return pastTransactionsDay
    */
    @namespaceAccessible
    public Integer pastTransactionsDay { get; set; }

    /**
    * Number of all transactions (successful and abandoned) from this shopper in the past year.
    * @return pastTransactionsYear
    */
    @namespaceAccessible
    public Integer pastTransactionsYear { get; set; }

    /**
    * Date this payment method was added to the shopper's account.
    * @return paymentAccountAge
    */
    @namespaceAccessible
    public String paymentAccountAge { get; set; }

    /**
    * Indicator for the length of time since this payment method was added to this shopper's account.
    * @return paymentAccountIndicator
    */
    @namespaceAccessible
    public Constants.PaymentAccountIndicatorEnum paymentAccountIndicator { get; set; }

    /**
    * Number of successful purchases in the last six months.
    * @return purchasesLast6Months
    */
    @namespaceAccessible
    public Integer purchasesLast6Months { get; set; }

    /**
    * Whether suspicious activity was recorded on this account.
    * @return suspiciousActivity
    */
    @namespaceAccessible
    public Boolean suspiciousActivity { get; set; }

    @namespaceAccessible
    public static ShopperAccountInfo getExample() {
        ShopperAccountInfo shopperInfo = new ShopperAccountInfo();
        shopperInfo.accountAgeIndicator = Constants.AccountAgeEnum.THIS_TRANSACTION;
        shopperInfo.accountChangeDate = '';
        shopperInfo.accountChangeIndicator = Constants.AccountChangeEnum.THIS_TRANSACTION;
        shopperInfo.accountCreationDate = '';
        shopperInfo.accountType = Constants.AccountTypeEnum.ACCOUNT_TYPE_DEBIT;
        shopperInfo.addCardAttemptsDay = 1;
        shopperInfo.deliveryAddressUsageDate = '';
        shopperInfo.deliveryAddressUsageIndicator = Constants.DeliveryAddressUsageIndicatorEnum.LESS_THAN_30_DAYS;
        shopperInfo.passwordChangeDate = '';
        shopperInfo.passwordChangeIndicator = Constants.PasswordChangeIndicatorEnum.THIS_TRANSACTION;
        shopperInfo.pastTransactionsDay = 5;
        shopperInfo.pastTransactionsYear = 50;
        shopperInfo.paymentAccountAge = '';
        shopperInfo.paymentAccountIndicator = Constants.PaymentAccountIndicatorEnum.THIS_TRANSACTION;
        shopperInfo.purchasesLast6Months = 20;
        shopperInfo.suspiciousActivity = true;
        return shopperInfo;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof ShopperAccountInfo) {
            ShopperAccountInfo shopperInfo = (ShopperAccountInfo) obj;
            return this.accountAgeIndicator == shopperInfo.accountAgeIndicator
                && this.accountChangeDate == shopperInfo.accountChangeDate
                && this.accountChangeIndicator == shopperInfo.accountChangeIndicator
                && this.accountCreationDate == shopperInfo.accountCreationDate
                && this.accountType == shopperInfo.accountType
                && this.addCardAttemptsDay == shopperInfo.addCardAttemptsDay
                && this.deliveryAddressUsageDate == shopperInfo.deliveryAddressUsageDate
                && this.deliveryAddressUsageIndicator == shopperInfo.deliveryAddressUsageIndicator
                && this.passwordChangeDate == shopperInfo.passwordChangeDate
                && this.passwordChangeIndicator == shopperInfo.passwordChangeIndicator
                && this.pastTransactionsDay == shopperInfo.pastTransactionsDay
                && this.pastTransactionsYear == shopperInfo.pastTransactionsYear
                && this.paymentAccountAge == shopperInfo.paymentAccountAge
                && this.paymentAccountIndicator == shopperInfo.paymentAccountIndicator
                && this.purchasesLast6Months == shopperInfo.purchasesLast6Months
                && this.suspiciousActivity == shopperInfo.suspiciousActivity;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (accountAgeIndicator == null ? 0 : System.hashCode(accountAgeIndicator));
        hashCode = (17 * hashCode) + (accountChangeDate == null ? 0 : System.hashCode(accountChangeDate));
        hashCode = (17 * hashCode) + (accountChangeIndicator == null ? 0 : System.hashCode(accountChangeIndicator));
        hashCode = (17 * hashCode) + (accountCreationDate == null ? 0 : System.hashCode(accountCreationDate));
        hashCode = (17 * hashCode) + (accountType == null ? 0 : System.hashCode(accountType));
        hashCode = (17 * hashCode) + (addCardAttemptsDay == null ? 0 : System.hashCode(addCardAttemptsDay));
        hashCode = (17 * hashCode) + (deliveryAddressUsageDate == null ? 0 : System.hashCode(deliveryAddressUsageDate));
        hashCode = (17 * hashCode) + (deliveryAddressUsageIndicator == null ? 0 : System.hashCode(deliveryAddressUsageIndicator));
        hashCode = (17 * hashCode) + (passwordChangeDate == null ? 0 : System.hashCode(passwordChangeDate));
        hashCode = (17 * hashCode) + (passwordChangeIndicator == null ? 0 : System.hashCode(passwordChangeIndicator));
        hashCode = (17 * hashCode) + (pastTransactionsDay == null ? 0 : System.hashCode(pastTransactionsDay));
        hashCode = (17 * hashCode) + (pastTransactionsYear == null ? 0 : System.hashCode(pastTransactionsYear));
        hashCode = (17 * hashCode) + (paymentAccountAge == null ? 0 : System.hashCode(paymentAccountAge));
        hashCode = (17 * hashCode) + (paymentAccountIndicator == null ? 0 : System.hashCode(paymentAccountIndicator));
        hashCode = (17 * hashCode) + (purchasesLast6Months == null ? 0 : System.hashCode(purchasesLast6Months));
        hashCode = (17 * hashCode) + (suspiciousActivity == null ? 0 : System.hashCode(suspiciousActivity));
        return hashCode;
    }
}