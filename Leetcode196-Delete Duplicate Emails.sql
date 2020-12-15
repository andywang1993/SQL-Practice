#LeetCode 196-Delete Duplicate Emails
CREATE TABLE Person (
ID int,
Email VARCHAR(50)
);
INSERT INTO Person (ID,Email) VALUES (1, 'john@example.com'),(2,'bob@example.com'),(3,'john@example.com');

#Use Delete and Inner Join
DELETE p1 FROM person AS p1 JOIN person AS p2
ON p1.email=p2.email
WHERE p1.Id>p2.Id;
