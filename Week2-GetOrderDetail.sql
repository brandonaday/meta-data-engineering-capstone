USE LittleLemonDB;

PREPARE GetOrderDetail
FROM 'SELECT OrderID, Quantity, BillAmount as TotalCost
FROM Orders
WHERE OrderID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;
DEALLOCATE PREPARE GetOrderDetail;






