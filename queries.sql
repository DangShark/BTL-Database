-- Query using inner join
SELECT e.empName, o.officeName
FROM employees e
         INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Query using outer join
SELECT c.customerName, e.empName
FROM customers c
         LEFT OUTER JOIN employees e ON c.employeeSale = e.employee_ID;

-- Using subquery in WHERE clause
SELECT * FROM book
WHERE bookCost > (SELECT AVG(bookCost) FROM book);

-- Using subquery in FROM clause
SELECT bookName, avg_cost
FROM book,
     (SELECT AVG(bookCost) AS avg_cost FROM book) subquery
WHERE bookCost > subquery.avg_cost;

-- Query using GROUP BY and aggregate functions
SELECT genre, COUNT(*) AS book_count, AVG(bookCost) AS avg_cost
FROM book
GROUP BY genre;