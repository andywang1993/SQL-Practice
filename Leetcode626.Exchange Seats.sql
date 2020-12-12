#Leetcode 626
#Mary is a teacher in a middle school and
#she has a table seat storing students' names and their corresponding seat ids.
#The column id is continuous increment.
#Mary wants to change seats for the adjacent students.
#Can you write a SQL query to output the result for Mary?

CREATE TABLE seat(id int, student varchar(255));

insert into seat (id, student) values ('1', 'Abbot');
insert into seat (id, student) values ('2', 'Doris');
insert into seat (id, student) values ('3', 'Emerson');
insert into seat (id, student) values ('4', 'Green');
insert into seat (id, student) values ('5', 'Jeames');

SELECT (IF(id %2 = 1 AND id = cnts,id,IF(id %2 = 1, id+1 , id -1 )) ) AS id, student
FROM seat,(SELECT COUNT(*) AS cnts FROM seat) AS t ORDER BY id;