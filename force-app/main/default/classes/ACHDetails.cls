@NamespaceAccessible
public with sharing class ACHDetails implements PaymentMethodDetails {
    /**
    * The bank account number (without separators).
    */
    @NamespaceAccessible
    public String bankAccountNumber;

    /**
    * The bank account type (checking, savings...)
    */
    @NamespaceAccessible
    public String bankAccountType;

    /**
    * The bank routing number of the account. The field value is nil in most cases
    */
    @NamespaceAccessible
    public String bankLocationId;

    /**
    * The checkout attempt identifier
    */
    @NamespaceAccessible
    public String checkoutAttemptId;

    /**
    * Encrypted bank account number. The bank account number (without separators)
    */
    @NamespaceAccessible
    public String encryptedBankAccountNumber;

    /**
    * Encrypted location id. The bank routing number of the account. The field value is nil in most cases
    */
    @NamespaceAccessible
    public String encryptedBankLocationId;

    /**
    * The name of the bank account holder
    * If you submit a name with non-Latin characters, we automatically replace some of them with corresponding Latin characters to meet the FATF recommendations
    */
    @NamespaceAccessible
    public String ownerName;

    /**
    * This is the recurringDetailReference returned in the response when you created the token
    */
    @NamespaceAccessible
    public String storedPaymentMethodId;

    /**
    * ach
    */
    @NamespaceAccessible
    public String type;

    @NamespaceAccessible
    public ACHDetails() {
        type = 'ach';
    }

    @NamespaceAccessible
    public static ACHDetails getExample() {
        ACHDetails achDetails = new ACHDetails();
        achDetails.bankAccountNumber = '123456789';
        achDetails.bankAccountType = 'checking';
        achDetails.bankLocationId = null;
        achDetails.checkoutAttemptId = 'abc123';
        achDetails.encryptedBankAccountNumber = 'adyenjs_0_1_25$GTE/ytzAupIEbFEybScAA/T3W8+Xj3...';
        achDetails.encryptedBankLocationId = 'adyenjs_0_1_25$UbyYyi7693Ya9e3cZNYOJj//l7...';
        achDetails.ownerName = 'John Smith';
        achDetails.storedPaymentMethodId = null;
        achDetails.type = 'ach';
        return achDetails;
    }

    @NamespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof ACHDetails) {
            ACHDetails otherACHDetails = (ACHDetails) obj;
            return this.bankAccountNumber == otherACHDetails.bankAccountNumber
                && this.bankAccountType == otherACHDetails.bankAccountType
                && this.bankLocationId == otherACHDetails.bankLocationId
                && this.checkoutAttemptId == otherACHDetails.checkoutAttemptId
                && this.encryptedBankAccountNumber == otherACHDetails.encryptedBankAccountNumber
                && this.encryptedBankLocationId == otherACHDetails.encryptedBankLocationId
                && this.ownerName == otherACHDetails.ownerName
                && this.storedPaymentMethodId == otherACHDetails.storedPaymentMethodId
                && this.type == otherACHDetails.type
            ;
        }
        return false;
    }

    @NamespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (bankAccountNumber == null ? 0 : bankAccountNumber.hashCode());
        hashCode = (17 * hashCode) + (bankAccountType == null ? 0 : bankAccountType.hashCode());
        hashCode = (17 * hashCode) + (bankLocationId == null ? 0 : bankLocationId.hashCode());
        hashCode = (17 * hashCode) + (checkoutAttemptId == null ? 0 : checkoutAttemptId.hashCode());
        hashCode = (17 * hashCode) + (encryptedBankAccountNumber == null ? 0 : encryptedBankAccountNumber.hashCode());
        hashCode = (17 * hashCode) + (encryptedBankLocationId == null ? 0 : encryptedBankLocationId.hashCode());
        hashCode = (17 * hashCode) + (ownerName == null ? 0 : ownerName.hashCode());
        hashCode = (17 * hashCode) + (storedPaymentMethodId == null ? 0 : storedPaymentMethodId.hashCode());
        hashCode = (17 * hashCode) + (type == null ? 0 : type.hashCode());
        return hashCode;
    }

    @NamespaceAccessible
    public String getType() {
        return type;
    }

    @NamespaceAccessible
    public void setType(String type) {
        this.type = type;
    }
}