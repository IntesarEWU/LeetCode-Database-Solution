-- 178 - Rank Scores
--
-- SQL Schema
Create table If Not Exists Scores (id int, score DECIMAL(3,2))
Truncate table Scores
insert into Scores (id, score) values ('1', '3.5')
insert into Scores (id, score) values ('2', '3.65')
insert into Scores (id, score) values ('3', '4.0')
insert into Scores (id, score) values ('4', '3.85')
insert into Scores (id, score) values ('5', '4.0')
insert into Scores (id, score) values ('6', '3.65')
--
--
-- SQL Query
select s.Score, (SELECT count(distinct(Score)) from Scores m where m.Score >= s.Score) as Rank
from Scores s
order by s.Score desc
