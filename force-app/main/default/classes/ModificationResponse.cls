@namespaceAccessible
public interface ModificationResponse {
    //interface to declare common methods from CaptureResponse and RefundResponse
    String getReference();
    void setReference(String reference);

    String getStatus();
    void setStatus(String status);

    String getMessage();
    void setMessage(String message);

    String getPSPReference();
    void setPSPReference(String pspReference);

}
