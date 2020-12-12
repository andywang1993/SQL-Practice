

#Write a SQL query to rank scores. 
#If there is a tie between two scores, both should have the same ranking.
#Note that after a tie, the next ranking number should be the next consecutive integer value.
#In other words, there should be no "holes" between ranks.

Create table  Scores 
(Id int,
 Score DECIMAL(3,2)
 );
insert into Scores (Id, Score) values ('1', '3.5');
insert into Scores (Id, Score) values ('2', '3.65');
insert into Scores (Id, Score) values ('3', '4.0');
insert into Scores (Id, Score) values ('4', '3.85');
insert into Scores (Id, Score) values ('5', '4.0');
insert into Scores (Id, Score) values ('6', '3.65');

#Solution
SELECT score , DENSE_RANK () OVER ( ORDER BY score DESC ) AS 'Rank' 
FROM scores; 
