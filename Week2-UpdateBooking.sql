USE LittleLemonDB;

DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER $$

CREATE PROCEDURE UpdateBooking(
  IN UpdateBookingID INT,
  IN UpdatedBookingDate DATE
)
BEGIN
  UPDATE Bookings
  SET BookingDate = UpdatedBookingDate
  WHERE BookingID = UpdateBookingID;

  SELECT CONCAT('Booking ', UpdateBookingID, ' has been updated to ', UpdatedBookingDate) AS 'Update Confirmation';
END$$

DELIMITER ;

CALL UpdateBooking(10, '2023-06-17');
