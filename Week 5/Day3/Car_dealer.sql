CREATE TABLE salesperson(
	salesperson_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone INT
);

CREATE TABLE customer (
    CustomerID INT PRIMARY KEY,
    name VARCHAR(255),
    phone INT
);

CREATE TABLE invoice (
    invoice_id INT PRIMARY KEY,
    date DATE,
    total_amount DECIMAL(10, 2),
    salesperson_id INT,
    customer_id INT,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE car(
    serial_number INT PRIMARY KEY,
    make VARCHAR(100),
    model VARCHAR(100),
    year INT
);

CREATE TABLE serviceticket (
    ticket_number INT PRIMARY KEY,
    date DATE,
    description VARCHAR(255),
    serial_number VARCHAR(50),
    FOREIGN KEY (serial_number) REFERENCES car(serial_number)
);

CREATE TABLE mechanic (
    mechanic_id INT PRIMARY KEY,
    name VARCHAR(100),
    speciality VARCHAR(100)
);

INSERT INTO car(serial_number,make,model,year)
VALUES(123432,'Toyota','Prius',2011);

DELIMITER //

CREATE FUNCTION insert_car(p_make VARCHAR(255), p_model VARCHAR(255),p_year INT);
RETURNS VARCHAR(50)
BEGIN 
	DELCARE new_serial VARCHAR(50);
    INSERT INTO car (make, model, year) VALUES (p_make, p_model, p_year);
    SET new_serial = LAST_INSERT_ID();
    RETURN new_serial;
END//

CALL insert_car('Ford', 'Mustang', 2023);

INSERT INTO Mechanic (MechanicID, Name, Speciality)
VALUES (1, 'Michael Johnson', 'Engine Repair');

-- Using a stored function to insert data into Mechanic
DELIMITER //

CREATE FUNCTION insert_mechanic(p_name VARCHAR(255), p_speciality VARCHAR(255))
RETURNS INT
BEGIN
    DECLARE new_id INT;
    INSERT INTO mechanic (name, speciality) VALUES (p_name, p_speciality);
    SET new_id = LAST_INSERT_ID();
    RETURN new_id;
END//

    