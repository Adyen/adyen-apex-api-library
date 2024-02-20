/*
* Adyen Checkout Sessions API
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/

@namespaceAccessible
public with sharing class MPIData {
    /**
    * In 3D Secure 1, the authentication response if the shopper was redirected.
    * In 3D Secure 2, this is the transStatus from the challenge result. If the transaction was frictionless, omit this parameter.
    * @return authenticationResponse
    */
    @namespaceAccessible
    public String authenticationResponse { get; set; }

    /**
    * The cardholder authentication value (base64 encoded, 20 bytes in a decoded form).
    * @return cavv
    */
    @namespaceAccessible
    public String cavv { get; set; }

    /**
    * The CAVV algorithm used. Include this only for 3D Secure 1.
    * @return cavvAlgorithm
    */
    @namespaceAccessible
    public String cavvAlgorithm { get; set; }

    /**
    * Indicator informing the Access Control Server (ACS) and the Directory Server (DS) that the authentication has been cancelled.
    * @return challengeCancel
    */
    @namespaceAccessible
    public String challengeCancel { get; set; }

    /**
    * In 3D Secure 1, this is the enrollment response from the 3D directory server.
    * In 3D Secure 2, this is the transStatus from the ARes.
    * @return directoryResponse
    */
    @namespaceAccessible
    public String directoryResponse { get; set; }

    /**
    * Supported for 3D Secure 2.The unique transaction identifier assigned by the Directory Server (DS) to identify a single transaction.
    * @return dsTransID
    */
    @namespaceAccessible
    public Integer dsTransID { get; set; }

    /**
    * The electronic commerce indicator.
    * @return eci
    */
    @namespaceAccessible
    public Integer eci { get; set; }

    /**
    * Risk score calculated by Directory Server (DS). Required for Cartes Bancaires integrations.
    * @return riskScore
    */
    @namespaceAccessible
    public String riskScore { get; set; }

    /**
    * The version of the 3D Secure protocol.
    * @return threeDSVersion
    */
    @namespaceAccessible
    public String threeDSVersion { get; set; }

    /**
    * Network token authentication verification value (TAVV). The network token cryptogram.
    * @return tokenAuthenticationVerificationValue
    */
    @namespaceAccessible
    public String tokenAuthenticationVerificationValue { get; set; }

    /**
    * Provides information on why the transStatus field has the specified value.
    * @return transStatusReason
    */
    @namespaceAccessible
    public String transStatusReason { get; set; }

    /**
    * Supported for 3D Secure 1. The transaction identifier (Base64-encoded, 20 bytes in a decoded form).
    * @return xid
    */
    @namespaceAccessible
    public String xid { get; set; }

    @namespaceAccessible
    public static MPIData getExample() {
        MPIData mpiData = new MPIData();
        mpiData.authenticationResponse = '';
        mpiData.cavv = '';
        mpiData.cavvAlgorithm = '';
        mpiData.challengeCancel = '';
        mpiData.directoryResponse = '';
        mpiData.dsTransID = 10;
        mpiData.eci = 10;
        mpiData.riskScore = '';
        mpiData.threeDSVersion = '';
        mpiData.tokenAuthenticationVerificationValue = '';
        mpiData.transStatusReason = '';
        mpiData.xid = '';
        return mpiData;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof MPIData) {
            MPIData mpiData = (MPIData) obj;
            return this.authenticationResponse == mpiData.authenticationResponse
                && this.cavv == mpiData.cavv
                && this.cavvAlgorithm == mpiData.cavvAlgorithm
                && this.challengeCancel == mpiData.challengeCancel
                && this.directoryResponse == mpiData.directoryResponse
                && this.dsTransID == mpiData.dsTransID
                && this.eci == mpiData.eci
                && this.riskScore == mpiData.riskScore
                && this.threeDSVersion == mpiData.threeDSVersion
                && this.tokenAuthenticationVerificationValue == mpiData.tokenAuthenticationVerificationValue
                && this.transStatusReason == mpiData.transStatusReason
                && this.xid == mpiData.xid;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (authenticationResponse == null ? 0 : System.hashCode(authenticationResponse));
        hashCode = (17 * hashCode) + (cavv == null ? 0 : System.hashCode(cavv));
        hashCode = (17 * hashCode) + (cavvAlgorithm == null ? 0 : System.hashCode(cavvAlgorithm));
        hashCode = (17 * hashCode) + (challengeCancel == null ? 0 : System.hashCode(challengeCancel));
        hashCode = (17 * hashCode) + (directoryResponse == null ? 0 : System.hashCode(directoryResponse));
        hashCode = (17 * hashCode) + (dsTransID == null ? 0 : System.hashCode(dsTransID));
        hashCode = (17 * hashCode) + (eci == null ? 0 : System.hashCode(eci));
        hashCode = (17 * hashCode) + (riskScore == null ? 0 : System.hashCode(riskScore));
        hashCode = (17 * hashCode) + (cavv == threeDSVersion ? 0 : System.hashCode(threeDSVersion));
        hashCode = (17 * hashCode) + (tokenAuthenticationVerificationValue == null ? 0 : System.hashCode(tokenAuthenticationVerificationValue));
        hashCode = (17 * hashCode) + (transStatusReason == null ? 0 : System.hashCode(transStatusReason));
        hashCode = (17 * hashCode) + (xid == null ? 0 : System.hashCode(xid));
        return hashCode;
    }
}