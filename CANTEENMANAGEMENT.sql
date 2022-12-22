USE CANTEENMANAGEMENT;
create table canteen (
canteen_id int not null auto_increment,
canteen_name varchar(50) not null,
canteen_address varchar(50) not null,
canteen_phone int(20) not null,
primary key(canteen_id));
 insert into canteen(canteen_name,canteen_address,canteen_phone) values
('puja canteen', 'virginia', '12345');
Select*from canteen;

CREATE table employee(
employee_id int not null auto_increment,
employee_firstName varchar(50) not null,
employee_lastName varchar(50) not null,
employee_address varchar(50) not null,
employee_phone int not null,
canteen_id int not null,
primary key(employee_id),
foreign key (canteen_id) references canteen (canteen_id));
insert into employee(employee_firstname,employee_lastname,employee_address,employee_phone,canteen_id) values
('puja ','sigdel', 'virginia', '12345','1');
Alter table employee add employee_department varchar(30) not null after employee_phone;
Select*from employee;

CREATE table customer(
customer_id int not null auto_increment,
customer_firstname varchar(20) not null,
customer_lastname varchar(20) not null,
customer_address varchar(20) not null,
customer_phone int  not null,
customer_billNo int not null,
canteen_id int,
primary key(customer_id),
foreign key(canteen_id)references canteen(canteen_id));
-- Insert into customer(customer_firstname,customer_lastname,customer_address,customer_phone, customer_billNo,canteen_id) values
-- ('john ','nelson', 'India', '24567','89''100');
Select*from customer;

CREATE table menue(
menue_id int not null auto_increment,
food_name varchar(20) not null,
food_price float not null,
employee_id int,
primary key (menue_id),
foreign key(employee_id)references employee(employee_id));
 Insert into menue(menue_id,menue_name,menue_price,employee_id) values 
('C momo','110','2');
Select*from menue;

 CREATE table orderdetails(
 orderdetails_id int not null auto_increment,
 orderdetails_quantityordered int not null,
 orderdetails_orderlinenumber smallint not null,
 orderdetails_eachprice decimal(10,2) not null,
 canteen_id int,
   primary key (orderdetails_id),
   foreign key(canteen_id) references canteen(canteen_id));
 -- Insert into orderdetails(
 -- 
 Select*from orderdetails;
 
 CREATE table department(
 department_id int not null auto_increment,
 department_name int not null,
 department_location int not null,
 employee_id int,
 primary key(department_id),
 foreign key(employee_id)references employee(employee_id));
 
 Select * from department;
 
 CREATE table orders(
 orders_id int not null,
 food_id int not null,
 customer_no int not null,
 employee_id int not null,
 primary key(orders_id),
 foreign key(employee_id)references employee(employee_id));
 
 Select * from orders;
 
 CREATE table payment(
 payment_id  int not null primary key,
 payment_amount decimal not null,
 payment_date date not null,
 payment_customername int not null,
 customer_id int,
 foreign key(customer_id) references customer(customer_id));

