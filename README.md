# Bamazon

## Initial Inventory
This is the initial product inventory in the mysql database.


## Show Product List and First Prompt
Running the bamazonCustomer.js file displays the product list and prompts the customer to enter the item number of the product s/he wants to purchase.

## Show Second Prompt
After answering the first prompt, the customer is presented a second prompt.

## Insufficient Quantity / Order Not Placed
If the customer enters a quantity that is greater than the available inventory for the product, s/he receives notification and the order is not placed, so the stock_quantity is not reduced in the database.

## Order Placed
If the customer enters a quantity that does not exceed the available inventory, s/he receives notification of the total cost and the customer's quantity is subtracted from the stock_quantity in the database. 



