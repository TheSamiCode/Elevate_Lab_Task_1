/*Create Database ECommerceDB Schema
   Create 6 Tables(Entities) in ECommerceDB like Users, Customers, Categories, Products, Orders, OrderItems.
*/

-- Create Database 
create Database ECommerceDB;


-- Use Database
use ECommerceDB;


/*Command to Create "Users" Table(Entity). This Table contains following columns(attribute)
		- user_id (PK)
		- name
		- email
		- password
*/
CREATE TABLE Users 
(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);
-- command View Users Table
select * from Users;


/*Command to Create "Customers" Table(Entity). This Table contains following columns(attribute)
		- customer_id (PK)
        - user_id (FK)
		- name
		- email
		- phone
        - address
*/
CREATE TABLE Customers 
(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id int references Users(user_id),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    address TEXT
);
-- command View Customers Table
select * from Customers;


/*Command to Create "Categories" Table(Entity). This Table contains following columns(attribute)
		- category_id (PK)
		- category_name
*/
CREATE TABLE Categories 
(
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);
-- command View Categories Table
select * from Categories;


/*Command to Create "Products" Table(Entity). This Table contains following columns(attribute)
		- product_id (PK)
		- name
		- category_id (FK)
		- price
        - stock
        - description
*/
CREATE TABLE Products 
(
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INT REFERENCES Categories(category_id) ON DELETE SET NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    description TEXT
);
-- command View Products Table
select * from Products;


/*Command to Create "Orders" Table(Entity). This Table contains following columns(attribute)
		- order_id (PK)
		- customer_id (FK)
		- order_date
		- total_amount
        - status
*/
CREATE TABLE Orders
(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id) ON DELETE SET NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
	status VARCHAR(20) DEFAULT 'Pending'
);
select * from Orders;

/*Command to Create "OrderItems" Table(Entity). This Table contains following columns(attribute)
		- item_id (PK)
		- order_id (FK)
		- product_id (FK)
		- quantity
        - price
*/
CREATE TABLE OrderItems 
(
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT REFERENCES Orders(order_id) ON DELETE SET NULL,
    product_id INT REFERENCES Products(product_id) ON DELETE SET NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL
);
select * from OrderItems;

Commit;



