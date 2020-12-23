#Placement
#Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. 
#It is guaranteed that no two students got same salary offer.

SELECT s.Name FROM Students AS s 
JOIN Friends AS f 
ON s.ID = f.id 
JOIN Packages AS p1 
ON p1.ID=f.ID 
JOIN Packages AS p2 
ON p2.ID = f.Friend_ID
WHERE p2.Salary > p1.Salary ORDER BY p2.salary