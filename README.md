#Built the database schema and ER diagram for an E-commerce system, showing how users, products, and orders connect. It’s designed to be clear, efficient, and ready for real-world use.
   ==>  Tool Used
 	==========
   	Tool :- MySQL Workbench
   	ER-Diagram : SmartDraw Website to draw ER-Diagram
    

-> Basically this E-Commerce System containes following Entity(Module) with given set of attributes.

    1) Users
	- user_id (PK)
	- name
	- email
	- password
       
    2) Customers
	- customer_id (PK)
	- user_id (FK)
	- name
	- email
	- phone
	- address

    3) Categories
	- category_id (PK)
	- category_name

    4) Products
	- product_id (PK)
	- name
	- category_id (FK)
	- price
	- stock
	- description

    5) Orders
	- order_id (PK)
	- customer_id (FK)
	- order_date
	- total_amount
	- status

    6) OrderItems
	- item_id (PK)
	- order_id (FK)
	- product_id (FK)
	- quantity
	- price


==> Entity Schemas Clear screenshots of each table — Users, Customers, Categories, Products, Orders, and OrderItems — are provided. These show the key fields, data types, and constraints, making it easy to understand how each part of the database is structured.

==> ER Diagram Overview A clean and well-organized ER diagram is included to show how all the tables are connected. It gives a quick visual of the relationships and helps you see how data flows across the system.
