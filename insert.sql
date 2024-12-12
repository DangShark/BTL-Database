INSERT INTO offices (officeCode, officeName, address) VALUES
    (11, 'Xuan Thuy Office', '123 Xuan Thuy'),
    (12, 'Hoan Kiem Office', '60 Hang Trong'),
    (13, 'Ha Dong Office', '165 Luong The Vinh'),
    (14, 'Cau Dien Office', '20 Cau Dien'),
    (15, 'Tay Ho Office', '28 Xuan La');

INSERT INTO employees (employee_ID, officeCode, empName, phoneNumber, E_role) VALUES
    (111, 2, 'Nguyen Duy Hoang', '0353558161', 'Manager'),
    (112, 4, 'Nguyen Van Duy', '0901231122', 'Sales'),
    (113, 7, 'Phan Hoang Dung', '0901233344', 'Staff'),
    (114, 8, 'Ngo Quang Dung', '0901238866', 'Staff'),
    (115, 9, 'Bui Thanh Dan', '0909873434', 'Sales');

INSERT INTO customers (customer_ID, employeeSale, customerName, phoneNumber, address, balance) VALUES
    (211, 102, 'Nguyen Dang Duong', '0933331234', '65A', 123.0),
    (212, 111, 'Hoang Tien Dat', '0933331122', '12A', 189.0),
    (213, 112, 'Ton Thanh Dat', '0933335566', '19C', 213.0),
    (214, 101, 'Phan Quang Truong', '0933331265', '21B', 3423.0),
    (215, 109, 'Hoang Minh Quang', '0944442308', '29B', 2010.0);

INSERT INTO book (book_ID, bookName, bookCost, genre, author, inventory) VALUE
    (311,'Harry Poster',200,'Long Story','Author 11', 8),
    (312,'Alien',99,'Horror','Author 18', 20),
    (313,'Predator',119,'Horror','Author 12', 5),
    (314,'Jujutsu Kaisen',20,'Comic','Author 21', 2),
    (315,'No love no life',30,'Drama','Author 16', 18);

INSERT INTO orderdetails (order_ID, book_ID, productNumber) VALUE
    (411,312,1),
    (412,313,2),
    (413,311,5),
    (414,314,3),
    (415,315,2);

INSERT INTO orders (order_ID, orderName, customer_ID, detail, orderCost, orderDate, shippedDate) VALUE
    (411,'Order 11', 211, '1 copy Alien', 99,'2024-09-08','2024-09-12'),
    (412,'Order 12', 212, '2 copy Predator', 238,'2024-10-18','2024-10-22'),
    (413,'Order 13', 213, '5 copies Harry Poster',1000 ,'2024-10-08','2024-10-12'),
    (414,'Order 14', 214, '3 copy Jujutsu Kaisen', 60,'2024-11-28','2024-12-02'),
    (415,'Order 15', 215, '2 copies No love no life', 60,'2024-11-30','2024-12-06');

INSERT INTO payments (customer_ID, amount, paymentDate) VALUE
    (211,99,'2024-09-12'),
    (212,240,'2024-10-22'),
    (213,1000,'2024-12-19'),
    (214,60,'2024-12-02'),
    (215,65,'2024-12-8');