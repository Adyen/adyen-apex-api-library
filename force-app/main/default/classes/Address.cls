/*
* Adyen Payment API
* A set of API endpoints that allow you to initiate, settle, and modify payments on the Adyen payments platform.
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/

@namespaceAccessible
public with sharing class Address {
    /**
    * The name of the city.
    * @return city
    */
    @namespaceAccessible
    public String city { get; set; }

    /**
    * The two-character country code as defined in ISO-3166-1 alpha-2. For example, **US**.\n> If you don\'t know the country or are not collecting the country from the shopper, provide `country` as `ZZ`.
    * @return country
    */
    @namespaceAccessible
    public String country { get; set; }

    /**
    * The number or name of the house.
    * @return houseNumberOrName
    */
    @namespaceAccessible
    public String houseNumberOrName { get; set; }

    /**
    * A maximum of five digits for an address in the US, or a maximum of ten characters for an address in all other countries.
    * @return postalCode
    */
    @namespaceAccessible
    public String postalCode { get; set; }

    /**
    * State or province codes as defined in ISO 3166-2. For example, **CA** in the US or **ON** in Canada.\n> Required for the US and Canada.
    * @return stateOrProvince
    */
    @namespaceAccessible
    public String stateOrProvince { get; set; }

    /**
    * The name of the street.\n> The house number should not be included in this field; it should be separately provided via `houseNumberOrName`.
    * @return street
    */
    @namespaceAccessible
    public String street { get; set; }

    @namespaceAccessible
    public static Address getExample() {
        Address address = new Address();
        address.city = '';
        address.country = '';
        address.houseNumberOrName = '';
        address.postalCode = '';
        address.stateOrProvince = '';
        address.street = '';
        return address;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof Address) {
            Address address = (Address) obj;
            return this.city == address.city
                && this.country == address.country
                && this.houseNumberOrName == address.houseNumberOrName
                && this.postalCode == address.postalCode
                && this.stateOrProvince == address.stateOrProvince
                && this.street == address.street;
        }
        return false;
    }

    @namespaceAccessible
    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (city == null ? 0 : System.hashCode(city));
        hashCode = (17 * hashCode) + (country == null ? 0 : System.hashCode(country));
        hashCode = (17 * hashCode) + (houseNumberOrName == null ? 0 : System.hashCode(houseNumberOrName));
        hashCode = (17 * hashCode) + (postalCode == null ? 0 : System.hashCode(postalCode));
        hashCode = (17 * hashCode) + (stateOrProvince == null ? 0 : System.hashCode(stateOrProvince));
        hashCode = (17 * hashCode) + (street == null ? 0 : System.hashCode(street));
        return hashCode;
    }
}