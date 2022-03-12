--- Assigment 3 --
CREATE DATABASE Action_tab

--Action valueleri---
CREATE TABLE Actions
( Visitor_id int, Adv_type char(10),
                  Actions char(10))


 INSERT INTO Actions(Visitor_id,Adv_type,Actions) 
            Values
			    (1,'A','Left'),
			    (2,'A','Order'),
			    (3,'B','Left'),
			    (4,'A','Order'),
			    (5,'A','Review'),
			    (6,'A','Left'),
			    (7,'B','Left'),
			    (8,'B','Order'),
			    (9,'B','Reiew'),
			    (10,'A','Review')

SELECT * 
  FROM Actions

--Her bir reklam türü için sorgu--
CREATE VIEW Action_sayýlar AS
	SELECT adv_type ,count(*) count_action,
	SUM(Case When Actions='Order' 	Then 1 else 0 	end)  count_order
	FROM Actions
	GROUP BY Adv_type



SELECT adv_type, CONVERT(numeric(2,2),(1.0*a.count_order / a.count_action)) Conversion_rate
FROM [dbo].[action_sayýlar] a;
