/*
* Adyen Checkout Sessions API
*
* Price and product information about the purchased items, to be included on the invoice sent to the shopper.
*
* Contact: support@adyen.com
*
* Do not edit the class manually.
*/

@namespaceAccessible
public with sharing class LineItems {
    /**
    * Item amount excluding the tax, in minor units.
    * @return amountExcludingTax
    */
    @namespaceAccessible
    public Integer amountExcludingTax {get;set;}

    /**
    * Item amount including the tax, in minor units.
    * @return amountIncludingTax
    */
    @namespaceAccessible
    public Integer amountIncludingTax {get;set;}

    /**
    * Description of the line item.
    * @return description
    */
    @namespaceAccessible
    public String description {get;set;}

    /**
    * ID of the line item.
    * @return id
    */
    @namespaceAccessible
    public String id {get;set;}

    /**
    * Link to the picture of the purchased item.
    * @return imageUrl
    */
    @namespaceAccessible
    public String imageUrl {get;set;}

    /**
    * Item category, used by the RatePay payment method.
    * @return itemCategory
    */
    @namespaceAccessible
    public String itemCategory {get;set;}

    /**
    * Link to the purchased item.
    * @return productUrl
    */
    @namespaceAccessible
    public String productUrl {get;set;}

    /**
    * Number of items.
    * @return quantity
    */
    @namespaceAccessible
    public Integer quantity {get;set;}

    /**
    * Tax amount, in minor units.
    * @return taxAmount
    */
    @namespaceAccessible
    public Integer taxAmount {get;set;}

    /**
    * Tax percentage, in minor units.
    * @return taxPercentage
    */
    @namespaceAccessible
    public String taxPercentage {get;set;}

    @namespaceAccessible
    public static LineItems getExample() {
        LineItems lineItem = new LineItems();
        lineItem.amountExcludingTax = 10;
        lineItem.amountIncludingTax = 15;
        lineItem.description = '';
        lineItem.id = '';
        lineItem.imageUrl = '';
        lineItem.itemCategory = '';
        lineItem.productUrl = '';
        lineItem.quantity = 15;
        lineItem.taxAmount = 15;
        lineItem.taxPercentage = '';
        return lineItem;
    }

    @namespaceAccessible
    public Boolean equals(Object obj) {
        if (obj instanceof LineItems) {
            LineItems lineItem = (LineItems) obj;
            return this.amountExcludingTax == lineItem.amountExcludingTax
                && this.amountIncludingTax == lineItem.amountIncludingTax
                && this.description == lineItem.description
                && this.imageUrl == lineItem.imageUrl
                && this.itemCategory == lineItem.itemCategory
                && this.productUrl == lineItem.productUrl
                && this.quantity == lineItem.quantity
                && this.taxAmount == lineItem.taxAmount
                && this.taxPercentage == lineItem.taxPercentage;
        }
        return false;
    }
}