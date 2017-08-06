DROP DATABASE IF EXISTS bamazondb;
CREATE DATABASE bamazondb;

USE bamazondb;

CREATE TABLE products (
	item_id integer not null auto_increment,
    product_name varchar(100) NULL,
    department_name varchar(100) NULL, 
    price decimal(10,2) NULL,
    stock_quantity int NULL,
    primary key (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Purple Rain vinyl album", "Music", 24.99, 2500);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("O(+> Keychain", "Novelties", 4.99, 2400);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Under the Cherry Moon (DVD)", "Movies", 9.99, 250);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Purple Rain (DVD)", "Movies", 14.99, 2500);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Grafitti Bridge (DVD)", "Movies", 8.99, 150);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Musicology (CD)", "Music", 11.99, 1600);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Around the World in a Day (CD)", "Music", 9.99, 900);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Guitar Picks (set of 6)", "Novelties", 29.99, 1000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("The Sacrifice of Victor", "Books", 149.99, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Prince: Inside the Purple Rain", "Books", 49.99, 10);
    