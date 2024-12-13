-- 1 : Câp nhật Balance với rollback
UPDATE Customers
SET balance = balance - 100
WHERE customer_ID = 201;

INSERT INTO Payments (customer_ID, amount, paymentDate)
VALUES (201, 100.0, '2023-12-15');

ROLLBACK;

-- 2: Thêm dữ liệu order với rollback
START TRANSACTION;
INSERT INTO Orderdetails (order_ID, book_ID, productNumber) VALUE
(601,312,3);
INSERT INTO orders (order_ID, orderName, customer_ID, detail, orderCost, orderDate, shippedDate)
VALUES (601, 'Test', 202, 'Detail', 150, '2024-01-01', '2024-01-03');

ROLLBACK;

-- 3: cập nhật inventory với rollback
START TRANSACTION;
UPDATE Books
SET inventory = inventory - 2
WHERE book_ID = 301;

ROLLBACK;