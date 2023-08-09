DELIMITER //
CREATE PROCEDURE latefee(
	-- This is our input variables an the data types they will be
	IN customer INT,
    IN late_fee_amount DECIMAL(10,2)
    )
-- This is where the procdure begins:
BEGIN
	-- Update the payment table	
	UPDATE payment
    -- Set the amount column equale to this new amount
	SET amount=amount+late_fee_amount
    -- Conditional to ensure we don't update all records
	WHERE customer_id=customer;
	-- Commit the canges done by the procedurs
	COMMIT;
    -- End the proceduer
END //
    
SELECT* 
FROM payment;

CALL latefee(323,2.00)

DELMITER//
CREATE PROCEDURE add_actor(
	IN a_id INT,
    IN f_name VARCHAR(45),
    IN l_name VARCHAR(45),
    IN l_update TIMESTAMP
    )

BEGIN 
	INSERT INTO actor(actor_id,dirst_name,last_name,last_update)
    VALUES(a_id,f_name,l_name);
END//

SELECT*
FROM actor;

CALL add_actor(501.'Gabriel', 'Iglesias',NOW());

    