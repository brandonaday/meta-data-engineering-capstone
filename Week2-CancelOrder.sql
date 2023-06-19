USE LittleLemonDB;

DROP PROCEDURE IF EXISTS CancelOrder;

DELIMITER $$

CREATE PROCEDURE CancelOrder(OrdID INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = OrdID;
    SELECT CONCAT('Order ', OrdID, ' is cancelled') AS Confirmation;
END$$

DELIMITER ;

CALL CancelOrder(1);







