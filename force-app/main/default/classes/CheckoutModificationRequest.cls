@NamespaceAccessible
public interface CheckoutModificationRequest {
    //interface to declare common methods from CheckoutCaptureRequest and CheckoutRefundRequest
    Amount getAmount();
    void setAmount(Amount amount);

    String getReference();
    void setReference(String reference);

    String getMerchantAccount();
    void setMerchantAccount(String merchantAccount);

    List<LineItem> getLineItems();
    void setLineItems(List<LineItem> lineItems);

    ApplicationInfo getApplicationInfo();
    void setApplicationInfo(ApplicationInfo applicationInfo);

}
