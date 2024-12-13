-- Query using inner join
SELECT e.empName, o.officeName
FROM Employees e
         INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Query using outer join
SELECT c.customerName, e.empName
FROM Customers c
         LEFT OUTER JOIN employees e ON c.employeeSale = e.employee_ID;

-- Using subquery in WHERE clause
SELECT * FROM Books
WHERE bookCost > (SELECT AVG(bookCost) FROM Books);

-- Using subquery in FROM clause
SELECT *
FROM employees
WHERE E_role = 'Staff';

-- Query using GROUP BY and aggregate functions
SELECT genre, COUNT(*) AS book_count, AVG(bookCost) AS avg_cost
FROM Books
GROUP BY genre;