@namespaceAccessible
public with sharing class ApiLibMock {

    @namespaceAccessible
    public static String mockPaymentsResponseSuccess() {
        return '{ "additionalData": { "cardSummary": "1111", "expiryDate": "3/2030", "cardHolderName": "John Smith", "paymentMethod": "visa" }, "pspReference": "8xxxxxxxxx", "resultCode": "Authorised", "merchantReference":}';
    }

    @namespaceAccessible
    public class AdyenPaymentsSuccessMock implements HttpCalloutMock {
        public HTTPResponse respond(HTTPRequest req) {
            HttpResponse res = new HttpResponse();
            res.setHeader('Content-Type', 'text/json');
            res.setBody(mockPaymentsResponseSuccess());
            res.setStatusCode(200);
            return res;
        }
    }

}