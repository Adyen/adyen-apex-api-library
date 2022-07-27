@namespaceAccessible
public interface CheckoutModificationResponse {
    //interface to declare common methods from CheckoutCaptureResponse and CheckoutRefundResponse
    Amount getAmount();
    void setAmount(Amount amount);

    String getMerchantAccount();
    void setMerchantAccount(String merchantAccount);

    String getPaymentPspReference();
    void setPaymentPspReference(String paymentPspReference);

    String getPSPReference();
    void setPSPReference(String pspReference);

    String getStatus();
    void setStatus(String status);

    String getReference();
    void setReference(String reference);
}
