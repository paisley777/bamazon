## Bamazon

### Initial Inventory
This is the initial product inventory in the mysql database.

![Image of database with initial inventory](https://github.com/paisley777/bamazon/blob/master/images/01-initial-inventory.PNG)


### Show Product List and First Prompt
Running the bamazonCustomer.js file displays the product list and prompts the customer to enter the item number of the product s/he wants to purchase.

![Image of product list and first prompt](https://github.com/paisley777/bamazon/blob/master/images/02-product-list-and-first-prompt.PNG)

### Show Second Prompt
After answering the first prompt, the customer is prompted to enter a product quantity.

![Image of second prompt](https://github.com/paisley777/bamazon/blob/master/images/03-second-prompt.PNG)

### Insufficient Quantity / Order Not Placed
If the customer enters a quantity that is greater than the available inventory for the product, s/he receives notification and the order is not placed, so the stock_quantity is not reduced in the database.

![Image of insufficient inventory notification](https://github.com/paisley777/bamazon/blob/master/images/04-insufficient-inventory-message.PNG)

![Image of unchanged inventory](https://github.com/paisley777/bamazon/blob/master/images/05-order-not-placed.PNG)

### Order Placed
If the customer enters a quantity that does not exceed the available inventory, s/he receives notification of the total cost and the customer's quantity is subtracted from the stock_quantity in the database. 

![Image of total cost notification](https://github.com/paisley777/bamazon/blob/master/images/06-placed-order-total-cost.PNG)

![Image of reduced inventory in database](https://github.com/paisley777/bamazon/blob/master/images/07-inventory-reduced.PNG)



