#Aggregation, the Blunder
#Write a query calculating the amount of error 
#(i.e.:  average monthly salaries), and round it up to the next integer.

SELECT CEIL(AVG(Salary)-AVG(REPLACE(salary,"0",""))) FROM employees;