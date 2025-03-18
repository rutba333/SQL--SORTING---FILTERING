-- Create the DEPARTMENT table if it does not exist  
CREATE TABLE IF NOT EXISTS DEPARTMENT (  
    EMPLOYEE_ID TEXT,  
    NAME TEXT,  
    DEPARTMENT_ID TEXT,  
    MANAGER_ID TEXT,  
    SALARY REAL  
);  

-- Insert sample data into the DEPARTMENT table  
INSERT INTO DEPARTMENT (EMPLOYEE_ID, NAME, DEPARTMENT_ID, MANAGER_ID, SALARY) VALUES  
    ('201', 'ALICE JOHNSON', '80', '200', 22000),  
    ('202', 'BOB WILLIAMS', '80', '200', 15000),  
    ('203', 'CHARLIE SMITH', '70', '201', 9500),  
    ('204', 'DAVID BROWN', '60', '204', 27000),  
    ('205', 'EMMA DAVIS', '60', '204', 5200),  
    ('206', 'FIONA CLARK', '50', '200', 4500),  
    ('207', 'GEORGE MILLER', '60', '201', 5800),  
    ('208', 'HANNAH LEWIS', '80', '200', 7300);  

-- Query to count the number of employees in each department  
SELECT DEPARTMENT_ID AS "Department Code",  
       COUNT(*) AS "No of Employees",  
       SUM(SALARY) AS "Total Salary"  
FROM DEPARTMENT  
GROUP BY DEPARTMENT_ID;  

-- Query to sum the salary of employees with a specific manager  
SELECT MANAGER_ID AS "Manager Code",  
       SUM(SALARY) AS "Total Salary"  
FROM DEPARTMENT  
GROUP BY MANAGER_ID;  
