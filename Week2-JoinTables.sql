USE LittleLemonDB;

SELECT
  c.CustID,
  CONCAT(c.First_Name, ' ', c.Last_Name) AS Customer_Name,
  o.OrderID,
  o.BillAmount AS Cost,
  m.Cuisine,
  mi.Name
FROM CustomerDetails c
INNER JOIN Orders o
ON c.CustID = o.CustID
INNER JOIN Menus m
ON o.MenuID = m.MenuID
INNER JOIN MenuItems mi
ON m.ItemID = mi.ItemID
WHERE o.BillAmount > 500;




