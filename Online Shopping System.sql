create Database Online_Shopping_System
use  Online_Shopping_System

create table Customer(
Customer_ID INT Primary key ,
Customer_Name Nvarchar (50) not null,
Customer_Email Nvarchar (100) unique not null,
Phone_Number Nvarchar (11) unique not null,
Customer_Address Nvarchar (100) not null,
);
insert into Customer(Customer_ID , Customer_Name , Customer_Email , Phone_Number , Customer_Address)
values 
(1,'Mohamed','mm@gmail.com','010242841','jnsdhucs'),s
(2,'Ahmed','fef@gmail.com','010585556','fewfefwe');


create table Orderr(
Order_ID INT ,
Customer_ID INT,
Order_Date Date Default Getdate(),
Total_Amount Decimal (10,3) not null,
Statue nvarchar (100) not null
constraint pk_Order primary key(Order_ID),
constraint fk_Order Foreign key(Customer_ID) references Customer,
);
insert into Orderr(Order_ID , Customer_ID , Order_Date , Total_Amount , Statue)
values 
(625,1,'2025-03-02',10004.6,'jnsdhucs'),
(852,2,'2025-05-02',25288.2,'fewfefwe');


update Orderr set Order_Date =getdate() WHERE Order_ID > 0;

create table Order_Details(
OrderDetails_ID INT PRIMARY KEY,
Quantity INT CHECK (Quantity > 0),
Price DECIMAL(10,2),
);
insert into Order_Details(OrderDetails_ID , Quantity , Price )
values 
(111,5000,500.5),
(222,4000,400.4);


create table Productt(
Product_ID INT PRIMARY KEY,
Price Decimal (10,2) check (Price > 0),
Product_Name Nvarchar(50) not null,
Catgory Nvarchar(50) not null,
Descripton Nvarchar(100) not null,
);
insert into Productt(Product_ID , Product_Name ,Price, Catgory , Descripton)
values 
(155,'Mohamed',1000.6,'1','dndcfvbdf'),
(255,'Shalaby',2500.2,'2','fvvdnvjdfnv');

Alter table Productt
add Rating INT default 0 ;

Update Productt set Catgory ='New' ;

Alter table Productt
Drop column Rating; 

DELETE FROM Productt WHERE Product_Name IS NOT NULL AND product_name != 'Null';

create table Suplier(
Suplier_ID INT PRIMARY KEY,
Suplier_Name Nvarchar(50) not null,
Contact_info Nvarchar(100) not null,
);
insert into Suplier(Suplier_ID , Suplier_Name ,Contact_info)
values 
(100,'Mohamed','good'),
(220,'Shalaby','perfect');


create table Product_Suplier(
Suplier_ID INT,
Product_ID INT,
Constraint Pk_Product_Suplier PRIMARY KEY (Suplier_ID, Product_ID),
Constraint fk_Product_Suplier foreign key(Suplier_ID) references Suplier,
Constraint fk2_Product_Suplier foreign key(Product_ID) references Productt,
);

insert into Product_Suplier(Suplier_ID , Product_ID )
values 
(100,155),
(220,255);


create table Order_Product (
Order_ID INT,
Product_ID INT,
Constraint Pk_Order_Product PRIMARY KEY (Order_ID, Product_ID),
Constraint fk_Order_Product foreign key(Order_ID) references Orderr,
Constraint fk2_Order_Product foreign key(Product_ID) references Productt,
);
insert into Order_Product(Order_ID , Product_ID )
values 
(1,155),
(2,255);

create table Associated(
Order_ID INT,
Product_ID INT,
OrderDetails_ID INT
Constraint Pk_Associated PRIMARY KEY (Order_ID, Product_ID),
Constraint fk_Associated  foreign key(Order_ID) references Orderr,
Constraint fk2_Associated  foreign key(Product_ID) references Productt,
Constraint fk3_Associated  foreign key(OrderDetails_ID) references Order_Details,
);
insert into Associated(Order_ID , Product_ID, OrderDetails_ID)
values 
(1,155,111),
(2,255,222);

select * from Customer ;
select * from Orderr;
select * from Order_Details;
select * from Productt;
select * from Suplier;
select * from Product_Suplier;
select * from Order_Product;
select * from Associated;

