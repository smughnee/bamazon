var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "d4i9va1",
  database: "bamazon_DB"
});

connection.connect(function(err) {
    if (err) throw err;
    start();
  });


function start() {
    inquirer
        .prompt({
            name: "ID",
            type: "rawlist",
            message: "What is the ID # of the product you would like to buy?",
            choices: [showInventory()]
        })
        
}

function showInventory() {
    connection.query('SELECT * FROM products', function(err, result) {
        if (err) throw err;
              for(var i = 0; i < result.length; i++) {
             console.log("Item ID: " + result[i].Id + " | Product: " + result[i].Product_name + " | Department: " + result[i].Department_name + " | Price: " +  result[i].Price + " | Quantity: " + result[i].Stock_quantity);
         }
        }); 
    }; 

function buy() {
    inquirer
        .prompt({
           name: "Quantity",
           type: "input",
           message: "How many units of this product would you like to buy?"
        })
}

//Check to see if there is enough product
//If not then console log insufficient quantity
//If yes then fulfill order & update customer total
//Update SQL database
  