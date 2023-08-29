CREATE DATABASE OrderManager
USE OrderManager;
GO
Create table Orders(
Order_ID int primary key,
customer_ID int ,
OrderDate date,
Status varchar(250) ,
FOREIGN KEY(customer_ID) References Customer(Customer_ID));
Go 
insert into Orders(Order_ID, customer_ID, OrderDate, Status) values (123, 11, '2023-08-23', 'In Stock');
insert into Orders(Order_ID, customer_ID, OrderDate, Status) values (124, 12, '2023-08-23', 'In Stock');
insert into Orders(Order_ID, customer_ID, OrderDate, Status) values (125, 15, '2023-08-23', 'In Stock');
insert into Orders(Order_ID, customer_ID, OrderDate, Status) values (126, 13, '2023-08-23', 'In Stock');
insert into Orders(Order_ID, customer_ID, OrderDate, Status) values (127, 14, '2023-08-23', 'In Stock');

Create table Customer(
Customer_ID int primary key ,
Name nvarchar(250),
Address nvarchar(250),
tel int,
Status varchar(250));
go 
insert into Customer(Customer_ID, Name, Address, tel, Status) Values (12,'huyhoang', 'trancung, co nhue,HN', 03232323, 'shipping');
insert into Customer(Customer_ID, Name, Address, tel, Status) Values (13,'nghoang', 'my dinh, NTL,HN', 032365656, 'shipping');
insert into Customer(Customer_ID, Name, Address, tel, Status) Values (14,'nghuyhoang', 'Hoang Quoc Viet,Cau Giay,HN', 0323256565, 'shipping');
insert into Customer(Customer_ID, Name, Address, tel, Status) Values (15,'hoanghuy', 'trancung, co nhue,HN', 0323545454, 'shipping');
insert into Customer(Customer_ID, Name, Address, tel, Status) Values (16,'huyhoangng', 'trancung, co nhue,HN', 0323298989, 'shipping');


Create table orderDetails(
Order_ID int ,
Product_ID int ,
Price money,
quantity int,
FOREIGN KEY (Order_ID) References Orders(Order_ID),
FOREIGN KEY (Product_ID) References Products(Product_ID)
);
go
Insert into orderDetails(Order_ID, Product_ID, Price, quantity) Values (123, 1, $1000, 1);
Insert into orderDetails(Order_ID, Product_ID, Price, quantity) Values (123, 2, $200, 2);
Insert into orderDetails(Order_ID, Product_ID, Price, quantity) Values (123, 3, $100, 1);



Create table Products(
Product_ID int primary key,
Name nvarchar(200),
Description nvarchar(200),
Unit nvarchar(200),
price money,
quantity int ,
status nvarchar(200));

GO
Insert into Products(Product_ID, Name, Description, Unit, price, quantity,status) values (1, 'Máy tính T450', 'Máy nhập mới', 'Chiếc', 1000, 100,'In stock');
Insert into Products(Product_ID, Name, Description, Unit, price, quantity,status) values (2, 'Điện thoại Nokia 5670', 'Hot ', 'Chiếc', 200, 100,'Out stock');
Insert into Products(Product_ID, Name, Description, Unit, price, quantity,status) values (3, 'Máy in samsung450', 'Hàng ế', 'Chiếc', 100, 100,'In stock');
Insert into Products(Product_ID, Name, Description, Unit, price, quantity,status) values (4, 'Iphone14PRM', 'Máy nhập mới', 'Chiếc', 1099, 100,'In stock');
Insert into Products(Product_ID, Name, Description, Unit, price, quantity,status) values (5, 'Laptop Dell', 'Secondhand', 'Chiếc', 2000, 100,'In stock');
select* from Products
select* from orderDetails
select * from Orders
select * from Customer