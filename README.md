# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

•	Instructions to use the application:
1.	Run bundle install on the project 
2.	Check if rails is up and running then run rails ‘db:seed’  command
3.	Run the URL : http://localhost:3000/orderdetails
4.	You should be able to see the following screen


5.	Create a new order . Click on creating a new order . 
6.	You will be able to see the following window :


7.	Add the order details 
8.	Now click on back once you get a confirmation
9.	From the list of the drones you can now assign a drone 
10.	Drone status will change to assign 
Now using Threads we are giving a waiting for some amount of time for the status to change once status of drone is picked up the order status will change too to enroute.
Then the drone will reach the location and then deliver the item then the order status will change to delivered.
Following the same the drone will be on it’s way back and be idle again indicating it can be used again . 

For now, we are just using a sleep method inside the thread to give a delay in the status change.

Drone status : 
1."Idle" : can be assigned :
2 "Assigned" : assigned an order
3 "Picked up enroute" : order status also changed to enroute along with dron’es status
                          4 "Reached"
5 "Delivered": order status also changes
6 "Way Back"
7"Reached Hub"

Also, please note for now please note I am refreshing the page through javascript sleep functionality to get the real time status . 

11.	Other than the same we can register new customers.

12.	We can add more products to choose from.




Database/Schema
1	Orders 
Order_id
Drone_id
Person_id
Status
Primary_key
Foreign_key(Table: Drone)
Foreign_key(Table: Person)
Integer value with the following: 

1: Order Created
2: Dispatched
3: Delivered


2	Drone
Drone_id
Status
Name
Primary_key
Integer values with the following:

1.	Idle
2.	Assigned
3.	Picked Up Enroute
4.	Reached
5.	Delivered
6.	Way Back
7.	Reached Hub
Name of the Drone
  	
3	Product
Product_id
Product_name
Category
Primary_key
Name of the item
Integer
	
4	OrderDetail
Orderdetail_id
Order_id
Product_id
quantity
Primary_key
Foreign_key(Table: Order)
Foreign_key(Table: Product)
integer

5	Person
Person_id
Address
Phone Number
Name
Primary_key
String
String
String

