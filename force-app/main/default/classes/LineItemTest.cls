@IsTest
private class LineItemTest {
    @IsTest
    static void lineItemTest() {
        LineItem lineItem = new LineItem();
        lineItem.amountExcludingTax = 100;
        lineItem.taxAmount = 5;
        lineItem.amountIncludingTax = 105;
        lineItem.quantity = 1;
        lineItem.size = 'small';
        lineItem.taxPercentage = 5;
        lineItem.description = 'grey shirt';
        lineItem.brand = 'Levi';
        lineItem.color = 'grey';
        lineItem.id = '2894019294';
        lineItem.imageUrl = 'https://www.images.com/greyShirt';
        lineItem.itemCategory = 'shirt';
        lineItem.manufacturer = 'Shirts Fabric';
        lineItem.receiverEmail = 'receiver@email.com';
        lineItem.productUrl = 'https://www.myshop.com/greyShirt/small';
        lineItem.sku = 'SFJ23934';
        lineItem.upc = 'SAB2228379';
        Assert.isNotNull(lineItem);
    }
}