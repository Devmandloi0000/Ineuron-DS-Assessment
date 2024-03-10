CREATE TABLE Employee (
  Emp_id INT PRIMARY KEY,
  Emp_name VARCHAR(255) NOT NULL,
  Salary DECIMAL(10,2) NOT NULL,
  Manager_id INT
);

use dev;


INSERT INTO Employee (Emp_id, Emp_name, Salary, Manager_id)
VALUES(10, 'anil', 50000.00, 18),
 (11, 'vikas', 75000.00, 16),
 (12, 'nisha', 40000.00, 18),
 (13, 'Nidhi', 60000.00, 17),
 (14, 'priya', 80000.00, 18),
 (15, 'mohit', 45000.00, 18),
 (16, 'rajesh', 90000.00, null),
 (17, 'raman', 55000.00, 16),
 (18, 'santosh', 65000.00, 17)
 ;
 
 select * from employee;
 
 
SELECT E2.EMP_ID, E2.EMP_NAME, AVG(E1.SALARY)
FROM Employee E1
INNER JOIN Employee E2
ON E1.MANAGER_ID = E2.EMP_ID
GROUP BY E2.EMP_ID, E2.EMP_NAME;
