var mysql = require('mysql');
var inquirer = require('inquirer');
var connection = require('./connection.js');

connection.connect(function(err) {
    if (err) throw err;
    showProductList();
});

function showProductList() {
  var query = 'SELECT * FROM products';
  connection.query(query, function(err, res) {
    for (var i = 0; i < res.length; i++) {
      console.log("Item Number: " + res[i].item_id + " || Product Name: " + res[i].product_name + 
                  " || Price: " + res[i].price);
    }
    placeOrder();
  });
}

function placeOrder() {
  inquirer
    .prompt([
      {
        name: "product",
        type: "input",
        message: "Enter the Item Number of the product you want to purchase:"
      },
      {
        name: "quantity",
        type: "input",
        message: "How many would you like?"
      }
    ])
    .then(function(answer) {
      var customerProduct = parseInt(answer.product);
      var customerQuantity = parseInt(answer.quantity);
      var query = 'SELECT * FROM products WHERE item_id=?';
      connection.query(query, customerProduct, function(err, res) {
        if (res[0].stock_quantity < customerQuantity) {
          console.log('Insufficient quantity! Your order will not be placed.');
        } else {
          console.log('Total Cost (sales tax not included): ' + (customerQuantity * res[0].price));
          var newQuantity = res[0].stock_quantity - customerQuantity;
          var query = connection.query(
            "UPDATE products SET ? WHERE ?",
            [
              {
                stock_quantity: newQuantity 
              },
              {
                item_id: customerProduct
              }
            ],
            function(err, res) {
              console.log(res.affectedRows + " products updated!\n");
            }
          ); 
        };
      });
    });
}

