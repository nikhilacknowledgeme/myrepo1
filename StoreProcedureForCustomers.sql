



CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20)
);

-- Insert sample data into the customers table
INSERT INTO customers (customer_id, name, email, phone)
VALUES
    (1, 'John Doe', 'john.doe@example.com', '123-456-7890'),
    (2, 'Jane Smith', 'jane.smith@example.com', '987-654-3210'),
    (3, 'Bob Johnson', 'bob.johnson@example.com', '555-123-4567');
    
    DELIMITER //

CREATE PROCEDURE GetCustomerInfo (IN p_customerID INT)
BEGIN
    -- Declare variables to store customer information
    DECLARE v_customerName VARCHAR(255);
    DECLARE v_customerEmail VARCHAR(255);
    DECLARE v_customerPhone VARCHAR(20);

    -- Select customer information based on the provided customer ID
    SELECT
        name,
        email,
        phone
    INTO
        v_customerName,
        v_customerEmail,
        v_customerPhone
    FROM
        customers
    WHERE
        customer_id = p_customerID;

    -- Display the customer information
    SELECT
        'Customer Name: ' as 'Attribute',
        v_customerName as 'Value'
    UNION
    SELECT
        'Email: ',
        v_customerEmail
    UNION
    SELECT
        'Phone: ',
        v_customerPhone;

END //

DELIMITER ;

-- Call the stored procedure with a specific customer ID
CALL GetCustomerInfo(1);

-- Pass Parameter to store procedure
DELIMITER //
CREATE PROCEDURE GetCustomerInformation (IN  p_customerID INT)
BEGIN
    -- Your SQL logic here using the p_customerID parameter
    SELECT
        customer_id,
        name,
        email,
        phone
    FROM
        customers
    WHERE
        customer_id = p_customerID;
END //

DELIMITER ;

CALL GetCustomerInfo(1);
--

DELIMITER //

CREATE PROCEDURE GetCustomerInfomation2 (
    IN p_customerEmail VARCHAR(255),
    OUT p_customerName VARCHAR(255),
    OUT p_customerPhone VARCHAR(20)
)
BEGIN
    -- Your SQL logic here using the input parameter p_customerEmail
    SELECT
        name,
        phone
    INTO
        p_customerName,
        p_customerPhone
    FROM
        customers
    WHERE
        email = p_customerEmail;
END //

DELIMITER ;

CALL GetCustomerInfo('john.doe@example.com','ajay','123-456-7890');

-- Now @customerName and @customerPhone hold the values returned by the procedure
SELECT @customerName, @customerPhone;

