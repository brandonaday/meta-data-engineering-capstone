USE LittleLemonDB;

DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER $$

CREATE PROCEDURE CancelBooking(
  IN BookingToCancelID INT
)
BEGIN

  DELETE FROM Bookings
  WHERE BookingID = BookingToCancelID;

  SELECT CONCAT('Booking for ', BookingToCancelID, ' has been cancelled.') AS 'Cancel Confirmation';

END$$

DELIMITER ;

CALL CancelBooking(10);
