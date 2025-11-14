/* 
1. Top 3 Highest Paid Employees
Find the top 3 employees with the highest salary. Show name, department, and salary. 
*/
SELECT TOP 3 name, department, salary FROM employees
ORDER BY salary DESC


/* 
2. Second Highest Salary in Each Department
For every department, find the employee with the second highest salary. If a department has less than 2 employees, return NULL for that department. 
*/
SELECT 


/* 
3. Employees Earning More Than Their Manager
List all employees whose salary is greater than their manager’s salary. Show employee name and their salary.
*/
SELECT * FROM employees

/*
4. Monthly Sales Growth
Calculate month-on-month percentage growth in total sales. Show month, total_sales, and growth_% (round to 2 decimals).
*/



/*
5. Customers Who Never Placed an Order
Find customers who have never placed any order. Return only their customer_name.
*/