-- Adding constraints to ensure data integrity
ALTER TABLE Orderdetails
    ADD CONSTRAINT fk_book FOREIGN KEY (book_ID) REFERENCES Books(book_ID);

ALTER TABLE Employees
    ADD CONSTRAINT fk_office FOREIGN KEY (officeCode) REFERENCES offices(officeCode);

ALTER TABLE Customers
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeSale) REFERENCES Employees(employee_ID);
