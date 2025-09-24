
use samplestoreproceduredb;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);


INSERT INTO employee (emp_id, emp_name, salary, hire_date)
VALUES (1, 'John Doe', 50000.00, 'after_employee_insert2024-01-11'),
(2, 'Jane Smith', 60000.00, '2024-02-11'),
(3, 'Bob Johnson', 90000.00, '2024-03-11');

CREATE TABLE audit_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    action VARCHAR(50),emp_name varchar(50),
    emp_id INT,
    log_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER after_employee_insert
AFTER INSERT
ON employee FOR EACH ROW

BEGIN
    INSERT INTO audit_log (action, emp_name,emp_id)
    VALUES ('Employee Added', NEW.emp_name,NEW.emp_id);
END;
//

DELIMITER ;
-- Trigger drop and audit_log drop 
DROP TRIGGER after_employee_insert;
DROP TABLE audit_log;

-- Trigger audit_log run
INSERT INTO employee (emp_id, emp_name, salary, hire_date)
VALUES (11, 'Ram Shastri', 76000.00, '2024-01-11');
 
select * from samplestoreproceduredb.audit_log;