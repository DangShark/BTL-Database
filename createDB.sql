drop database btl;
create database btl;

use btl;

-- khởi tạo bảng books
create table Books (
	book_ID int not null primary key, 
    bookName varchar(50) not null, 
    bookCost float,
    genre varchar(50),
    author varchar(50) not null,
    inventory int
);

-- khởi tạo bảng orderdetails
create table Orderdetails (
	order_ID int not null ,
    book_ID int not null,
    productNumber int,
    primary key(Order_ID),
    foreign key (book_ID) references Books(book_ID)
);



-- khởi tạo bảng offices
create table Offices (
	officeCode int not null,
    officeName varchar(50), 
    address varchar(20), 
    primary key (officeCode)
);

-- khởi tạo bảng employees
create table Employees (
	employee_ID int not null, 
    officeCode int not null, 
    empName varchar(50) not null, 
    phoneNumber varchar(10) not null, 
    E_role varchar(50) not null, 
    primary key(employee_ID), 
    foreign key( officeCode) references Offices(officeCode)
);


-- khởi tạo bảng customers
create table Customers(
	customer_ID int not null, 
    employeeSale int not null,
    customerName varchar(50) not null, 
    phoneNumber varchar(10),
    address varchar(10),
    balance float not null,
    primary key(customer_ID),
    foreign key(employeeSale) references Employees(employee_ID)
);


-- khởi tạo bảng orders
create table Orders (
	order_ID int not null,
    orderName varchar(50) not null,
    customer_ID int not null, 
    detail varchar(50) not null,
    orderCost int not null,
	orderDate date not null, 
    shippedDate date not null,
    foreign key(order_ID) references orderdetails(order_ID),
    foreign key(customer_ID) references Customers(customer_ID)
);

-- khởi tạo bảng payments
create table Payments(
	customer_ID int not null,
    amount float not null,
    paymentDate date,
    foreign key(customer_ID) references Customers(customer_ID)
);

INSERT INTO offices (officeCode, officeName, address) VALUES
(1, 'Head Office', '123 Main St'),
(2, 'Branch Office', '456 Elm St'),
(3, 'Central Office', '789 Oak Ave'),
(4, 'North Office', '321 Maple Rd'),
(5, 'South Office', '654 Pine Ln'),
(6, 'West Office', '987 Cedar Ct'),
(7, 'East Office', '246 Birch Blvd'),
(8, 'Downtown Office', '135 Elm St'),
(9, 'Uptown Office', '864 Spruce St'),
(10, 'Suburban Office', '753 Willow Way');

-- Thêm dữ liệu vào bảng Employees
INSERT INTO Employees (employee_ID, officeCode, empName, phoneNumber, E_role) VALUES
(101, 1, 'Nguyen Van A', '0901234567', 'Manager'),
(102, 1, 'Tran Thi B', '0909876543', 'Sales'),
(103, 2, 'Le Van C', '0912345678', 'Staff'),
(104, 3, 'Pham Hong D', '0923456789', 'Sales'),
(105, 4, 'Hoang Minh E', '0934567890', 'Manager'),
(106, 5, 'Nguyen Thi F', '0945678901', 'Staff'),
(107, 6, 'Tran Van G', '0956789012', 'Sales'),
(108, 7, 'Le Thi H', '0967890123', 'Staff'),
(109, 8, 'Nguyen Van I', '0978901234', 'Manager'),
(110, 9, 'Pham Thi J', '0989012345', 'Sales');

-- Thêm dữ liệu vào bảng Customers
INSERT INTO Customers (customer_ID, employeeSale, customerName, phoneNumber, address, balance) VALUES
(201, 102, 'Pham Hong D', '0933333333', '1A', 100.0),
(202, 103, 'Hoang Minh E', '0944444444', '2B', 200.0),
(203, 104, 'Nguyen Thi F', '0955555555', '3C', 150.0),
(204, 105, 'Le Van K', '0966666666', '4D', 80.0),
(205, 106, 'Tran Thi L', '0977777777', '5E', 120.0),
(206, 107, 'Hoang Van M', '0988888888', '6F', 300.0),
(207, 108, 'Nguyen Thi N', '0999999999', '7G', 50.0),
(208, 109, 'Pham Van O', '0911111111', '8H', 40.0),
(209, 110, 'Le Thi P', '0922222222', '9I', 500.0),
(210, 101, 'Tran Van Q', '0933333334', '10J', 70.0);

-- Thêm dữ liệu vào bảng book
INSERT INTO Books (book_ID, bookName, bookCost, genre, author, inventory) VALUES
(301, 'Book A', 50.0, 'Fiction', 'Author 1', 20),
(302, 'Book B', 60.0, 'Science', 'Author 2', 15),
(303, 'Book C', 70.0, 'History', 'Author 3', 10),
(304, 'Book D', 40.0, 'Fantasy', 'Author 4', 25),
(305, 'Book E', 30.0, 'Fiction', 'Author 1', 50),
(306, 'Book F', 90.0, 'Science', 'Author 5', 8),
(307, 'Book G', 100.0, 'Biography', 'Author 6', 12),
(308, 'Book H', 45.0, 'Mystery', 'Author 7', 18),
(309, 'Book I', 80.0, 'Adventure', 'Author 8', 14),
(310, 'Book J', 55.0, 'Horror', 'Author 9', 30);

-- Thêm dữ liệu vào bảng orderdetails
INSERT INTO Orderdetails (order_ID, book_ID, productNumber) VALUES
(401, 301, 2),
(402, 302, 1),
(403, 303, 3),
(404, 304, 5),
(405, 305, 4),
(406, 306, 2),
(407, 307, 3),
(408, 308, 1),
(409, 309, 2),
(410, 310, 4);

-- Thêm dữ liệu vào bảng Orders
INSERT INTO Orders (order_ID, orderName, customer_ID, detail, orderCost, orderDate, shippedDate) VALUES
(401, 'Order 1', 201, '2 copies of Book A', 100, '2023-12-01', '2023-12-03'),
(402, 'Order 2', 202, '1 copy of Book B', 60, '2023-12-02', '2023-12-04'),
(403, 'Order 3', 203, '3 copies of Book C', 210, '2023-12-03', '2023-12-05'),
(404, 'Order 4', 204, '5 copies of Book D', 200, '2023-12-04', '2023-12-06'),
(405, 'Order 5', 205, '4 copies of Book E', 120, '2023-12-05', '2023-12-07'),
(406, 'Order 6', 206, '2 copies of Book F', 180, '2023-12-06', '2023-12-08'),
(407, 'Order 7', 207, '3 copies of Book G', 300, '2023-12-07', '2023-12-09'),
(408, 'Order 8', 208, '1 copy of Book H', 45, '2023-12-08', '2023-12-10'),
(409, 'Order 9', 209, '2 copies of Book I', 160, '2023-12-09', '2023-12-11'),
(410, 'Order 10', 210, '4 copies of Book J', 220, '2023-12-10', '2023-12-12');

-- Thêm dữ liệu vào bảng Payments
INSERT INTO Payments (customer_ID, amount, paymentDate) VALUES
(201, 100.0, '2023-12-05'),
(202, 60.0, '2023-12-06'),
(203, 210.0, '2023-12-07'),
(204, 200.0, '2023-12-08'),
(205, 120.0, '2023-12-09'),
(206, 180.0, '2023-12-10'),
(207, 300.0, '2023-12-11'),
(208, 45.0, '2023-12-12'),
(209, 160.0, '2023-12-13'),
(210, 220.0, '2023-12-14');






