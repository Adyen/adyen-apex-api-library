@NamespaceAccessible
public with sharing class LineItem {
    /**
     * Item amount excluding the tax, in minor units.
     */
    @NamespaceAccessible
    public Integer amountExcludingTax { get; set; }

    /**
     * Item amount including the tax, in minor units.
     */
    @NamespaceAccessible
    public Integer amountIncludingTax { get; set; }

    /**
    * Brand of the item.
    */
    @NamespaceAccessible
    public String brand { get; set; }

    /**
    * Color of the item.
    */
    @NamespaceAccessible
    public String color { get; set; }

    /**
    * Description of the line item.
    */
    @NamespaceAccessible
    public String description { get; set; }

    /**
    * ID of the line item.
    */
    @NamespaceAccessible
    public String id { get; set; }

    /**
    * Link to the picture of the purchased item.
    */
    @NamespaceAccessible
    public String imageUrl { get; set; }

    /**
    * Item category, used by the payment methods PayPal and Ratepay.
    */
    @NamespaceAccessible
    public String itemCategory { get; set; }

    /**
    * Manufacturer of the item.
    */
    @NamespaceAccessible
    public String manufacturer { get; set; }

    /**
    * Link to the purchased item.
    */
    @NamespaceAccessible
    public String productUrl { get; set; }

    /**
     * Number of items.
     */
    @NamespaceAccessible
    public Integer quantity { get; set; }

    /**
    * Email associated with the given product in the basket (usually in electronic gift cards).
    */
    @NamespaceAccessible
    public String receiverEmail { get; set; }

    /**
    * Size of the item.
    */
    @NamespaceAccessible
    public String size { get; set; }

    /**
    * Stock keeping unit.
    */
    @NamespaceAccessible
    public String sku { get; set; }

    /**
     * Tax amount, in minor units.
     */
    @NamespaceAccessible
    public Integer taxAmount { get; set; }

    /**
     * Tax percentage, in minor units.
     */
    @NamespaceAccessible
    public Integer taxPercentage { get; set; }

    /**
    * Universal Product Code.
    */
    @NamespaceAccessible
    public String upc { get; set; }
}