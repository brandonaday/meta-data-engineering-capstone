USE LittleLemonDB;

CREATE VIEW OrdersView
AS
SELECT OrderID, Quantity, BillAmount
FROM Orders;

SELECT *
FROM OrdersView;

