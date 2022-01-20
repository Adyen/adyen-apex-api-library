/*
* Adyen Checkout Sessions API
*
* Information regarding the company.
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/

@namespaceAccessible
public with sharing class Company {
    /**
    * The company website's home page.
    * @return homepage
    */
    @namespaceAccessible
    public String homepage { get; set; }

    /**
    * The company name.
    * @return name
    */
    @namespaceAccessible
    public String name {get;set;}

    /**
    * Registration number of the company.
    * @return registrationNumber
    */
    @namespaceAccessible
	public Integer registrationNumber {get;set;}

	/**
    * Registry location of the company.
    * @return registryLocation
    */
    @namespaceAccessible
	public String registryLocation {get;set;}

	/**
    * Tax ID of the company.
    * @return taxId
    */
    @namespaceAccessible
	public String taxId {get;set;}

	/**
    * The company type.
    * @return type
    */
    @namespaceAccessible
	public String type {get;set;}

    @namespaceAccessible
    public static Company getExample() {
        Company company = new Company();
        company.homepage = '';
        company.name = '';
        company.registrationNumber = 50;
        company.registryLocation = '';
        company.taxId = '';
        company.type = '';
        return company;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof Company) {
            Company company = (Company) obj;
            return this.homepage == company.homepage
                && this.name == company.name
                && this.registrationNumber == company.registrationNumber
                && this.registryLocation == company.registryLocation
                && this.taxId == company.taxId
                && this.type == company.type;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (homepage == null ? 0 : System.hashCode(homepage));
        hashCode = (17 * hashCode) + (name == null ? 0 : System.hashCode(name));
        hashCode = (17 * hashCode) + (registrationNumber == null ? 0 : System.hashCode(registrationNumber));
        hashCode = (17 * hashCode) + (registryLocation == null ? 0 : System.hashCode(registryLocation));
        hashCode = (17 * hashCode) + (taxId == null ? 0 : System.hashCode(taxId));
        hashCode = (17 * hashCode) + (type == null ? 0 : System.hashCode(type));
        return hashCode;
    }
}