@NamespaceAccessible
public interface ModificationRequest {
    //interface to declare common methods from CaptureRequest and RefundRequest
    String getAdditionalData();
    void setAdditionalData(String additionalData);

    ApplicationInfo getApplicationInfo();
    void setApplicationInfo(ApplicationInfo applicationInfo);

    String getOriginalReference();
    void setOriginalReference(String originalReference);

    Amount getAmount();
    void setAmount(Amount amount);

    String getReference();
    void setReference(String reference);

    String getMerchantAccount();
    void setMerchantAccount(String merchantAccount);

}
