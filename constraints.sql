-- Adding constraints to ensure data integrity
ALTER TABLE Orderdetails
    ADD CONSTRAINT fk_book FOREIGN KEY (book_ID) REFERENCES book(book_ID);

ALTER TABLE employees
    ADD CONSTRAINT fk_office FOREIGN KEY (officeCode) REFERENCES offices(officeCode);

ALTER TABLE customers
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeSale) REFERENCES employees(employee_ID);