# I have developed a Database Schema & ER Diagram of E-commerce System

	Tool Used
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


-> I have attached Screenshot of every entity schema.

-> There is also and We-defined ER Diagram Screenshot also attached.
