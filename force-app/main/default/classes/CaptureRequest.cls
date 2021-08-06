/*
* Represents an Adyen Capture Request
*/

@namespaceAccessible
public class CaptureRequest {
    public String originalReference;
    public Amount modificationAmount;
    public String reference;
    public String merchantAccount;
    public CaptureRequest(){}
}