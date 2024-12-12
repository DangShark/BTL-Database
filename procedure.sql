-- Example 1: Truy xuất đơn hàng của khách hàng
CREATE PROCEDURE GetCustomerOrders(IN customerID INT)
BEGIN
    SELECT o.orderName, o.orderCost, o.orderDate
    FROM orders o
    WHERE o.customer_ID = customerID;
END;

-- Example 2: Tính tổng doanh số theo nhân viên
CREATE PROCEDURE GetEmployeeSales(IN employeeID INT)
BEGIN
    SELECT SUM(o.orderCost) AS total_sales
    FROM orders o
             JOIN customers c ON o.customer_ID = c.customer_ID
    WHERE c.employeeSale = employeeID;
END;

-- Example 3: Truy xuất sách theo thể loại
CREATE PROCEDURE GetBooksByGenre(IN genreName VARCHAR(50))
BEGIN
    SELECT bookName, bookCost, inventory
    FROM book
    WHERE genre = genreName;
END;