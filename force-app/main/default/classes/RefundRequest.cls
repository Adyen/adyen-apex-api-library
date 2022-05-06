/*
* Represents an Adyen Refund Request
*/
@namespaceAccessible
public with sharing class RefundRequest implements ModificationRequest {

    /**
    * additional data
    * @return additionalData
    */
    @namespaceAccessible
    public String additionalData { get; set; }

    /**
    * application info
    * @return applicationInfo
    */
    @namespaceAccessible
    public ApplicationInfo applicationInfo { get; set; }

    /**
    * original payment reference
    * @return originalReference
    */
    @namespaceAccessible
    public String originalReference { get; set; }

    /**
    * Payment refund amount
    * @return amount
    */
    @namespaceAccessible
    public Amount modificationAmount { get; set; }

    /**
    * Payment refund amount
    * @return amount
    */
    @namespaceAccessible
    public Amount amount { get; set; }

    /**
    * The reference to uniquely identify a payment. This reference is used in all communication with you about the payment status. We recommend using a unique value per payment; however, it is not a requirement.\nIf you need to provide multiple references for a transaction, separate them with hyphens ("-").\nMaximum length: 80 characters.
    * @return reference
    */
    @namespaceAccessible
    public String reference { get; set; }

    /**
    * Merchant account name
    * @return merchantAccount
    */
    @namespaceAccessible
    public String merchantAccount { get; set; }

    @namespaceAccessible
    public RefundRequest(){}

}