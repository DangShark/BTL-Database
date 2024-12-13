-- 1: Truy xuất đơn hàng của khách hàng
CREATE PROCEDURE GetCustomerOrders(IN customerID INT)
BEGIN
    SELECT o.orderName, o.orderCost, o.orderDate
    FROM Orders o
    WHERE o.customer_ID = customerID;
END;

-- 2: Tính tổng doanh số theo nhân viên
CREATE PROCEDURE GetEmployeeSales(IN employeeID INT)
BEGIN
    SELECT SUM(o.orderCost) AS total_sales
    FROM Orders o
             JOIN Customers c ON o.customer_ID = c.customer_ID
    WHERE c.employeeSale = employeeID;
END;

-- 3: Truy xuất sách theo thể loại
CREATE PROCEDURE GetBooksByGenre(IN genreName VARCHAR(50))
BEGIN
    SELECT bookName, bookCost, inventory
    FROM Books
    WHERE genre = genreName;
END;