CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	id INTEGER(11) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(80) NOT NULL,
    department_name VARCHAR(80) NOT NULL,
	price INTEGER(100),
    stock_quantity INTEGER(100),
    PRIMARY KEY (id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Book", "Education", 8, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Pillow", "Household", 17, 11);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Clay Mask", "Beauty", 9, 3);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Headphones", "Electronics", 95, 2);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Shoes", "Apparel", 45, 13);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Water Bottle", "Household", 17, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Crockpot", "Household", 32, 13);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Shampoo", "Household", 6, 41);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Paint Set", "Activities", 33, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tennis Racket", "Activities", 200, 4);