SELECT e1.Name
FROM Employee e1,
     Employee e2
WHERE e2.id= e1.manager_id AND e1.salary> e2.salary;


SELECT AVG(x.Salary) as avg_salary
FROM
	(SELECT e1.id, e1.Name, e1.Salary
	  FROM Employee e1
	  LEFT JOIN Employee e2
		ON e1.id = e2.manager_id
	 WHERE e2.manager_id IS NULL) x;
 
 


