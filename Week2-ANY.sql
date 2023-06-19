USE LittleLemonDB;

SELECT
  mi.Name
FROM Menus m

LEFT JOIN MenuItems mi
USING(ItemID)

WHERE m.MenuID =ANY (
    SELECT DISTINCT MenuID
    FROM Orders
    WHERE Quantity > 2
  );





