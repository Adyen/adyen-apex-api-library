/*
* Adyen Checkout API
* Adyen Checkout API provides a simple and flexible way to initiate and authorise online payments.
* You can use the same integration for payments made with cards (including 3D Secure), mobile wallets, and local payment methods (for example, iDEAL and Sofort).
* This API reference provides information on available endpoints and how to interact with them. To learn more about the API, visit [Checkout documentation](https://docs.adyen.com/checkout).\n\n## Authentication\nEach request to the Checkout API must be signed with an API key. For this, obtain an API Key from your Customer Area, as described in [How to get the API key](https://docs.adyen.com/user-management/how-to-get-the-api-key). Then set this key to the `X-API-Key` header value, for example:\n\n```\ncurl\n-H "Content-Type: application/json" \\n-H "X-API-Key: Your_Checkout_API_key" \\n...\n```\nNote that when going live, you need to generate a new API Key to access the [live endpoints](https://docs.adyen.com/development-resources/live-endpoints).\n\n## Versioning\nCheckout API supports versioning of its endpoints through a version suffix in the endpoint URL. This suffix has the following format: "vXX", where XX is the version number.\n\nFor example:\n```\nhttps://checkout-test.adyen.com/v64/payments\n```
*
* Contact: support@adyen.com
*
*/

@namespaceAccessible
public with sharing class AdyenClient {

    @namespaceAccessible
    public AdyenConfig config;

    @namespaceAccessible
    public AdyenClient(String apiKey, String endpoint) {
        this.config = new AdyenConfig();
        this.config.setApiKey(apiKey);
        this.config.setEndpoint(endpoint);
    }

    @namespaceAccessible
    public HttpResponse request(AdyenConfig config, String request){
        HttpRequest httpRequest = createHttpRequest(config, request);
        return sendRequest(httpRequest);
    }

    private HttpResponse sendRequest(HttpRequest request){
        Http httpClient = new Http();
        return httpClient.send(request);
    }

    private HttpRequest createHttpRequest(AdyenConfig config, String request){
        HttpRequest httpReq = new HttpRequest();
        httpReq.setEndpoint(config.getEndpoint());
        httpReq.setMethod('POST');
        httpReq.setHeader('X-API-KEY', config.getApiKey());
        httpReq.setHeader('Content-Type', 'application/json');
        httpReq.setBody(request);
        return httpReq;
    }
}