-- 1 : cập nhật hàng tồn kho mới
CREATE TRIGGER update_inventory
    AFTER INSERT ON Orderdetails
    FOR EACH ROW
BEGIN
    UPDATE Books
    SET inventory = inventory - NEW.productNumber
    WHERE book_ID = NEW.book_ID;
END;

-- 2: Cập nhật tồn kho sau khi chèn đơn hàng
CREATE TRIGGER update_inventory_after_order
    AFTER INSERT ON Orderdetails
    FOR EACH ROW
BEGIN
    UPDATE Books
    SET inventory = inventory - NEW.productNumber
    WHERE book_ID = NEW.book_ID;
END;

-- 3: Không cho số dư là số âm
CREATE TRIGGER prevent_negative_balance
    BEFORE UPDATE ON Customers
    FOR EACH ROW
BEGIN
    IF NEW.balance < 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Balance cannot be negative';
    END IF;
END;