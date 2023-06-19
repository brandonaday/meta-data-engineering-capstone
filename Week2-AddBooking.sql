USE LittleLemonDB;

DROP PROCEDURE IF EXISTS AddBooking;

DELIMITER $$

CREATE PROCEDURE AddBooking(
  IN BookingID INT, 
  IN CustID INT,
  IN TableNo INT,
  IN BookingDate DATE,
  IN BookingTime TIME,
  IN EmployeeID INT
)
BEGIN

  INSERT INTO Bookings (BookingID, CustID, TableNo, BookingDate, BookingTime, EmployeeID)
  VALUES (BookingID, CustID, TableNo, BookingDate, BookingTime, EmployeeID);

  SELECT 'A new booking has been added.' AS 'Booking Added Confirmation';

END$$

DELIMITER ;

CALL AddBooking(0, 06, 25, '2023-6-15', '06:15:00', 230615 );

SELECT * FROM Bookings;
