-- between, IN, 
-- BETWEEN: as a range of values 
-- 5 and 10 Betwen 5 and 10 (inclusive)
-- nubmer => 5 and number =< 10
--1)  SQL Aggregation
SELECT * FROM agents;
SELECT SUM(commission) FROM agents;
SELECT AVG(commission) FROM agents;
SELECT MIN(commission) FROM agents;
SELECT MAX(commission) FROM agents;
-- Crazy calculation
SELECT MIN(commission) /  MAX(commission) AS addition FROM agents;

/* 2 Categorical metrics( Group BY & Having) 
GROUP BY helps to groups rows with identical values into summary rows 
HAVING it helps to filter those grouped results after after aggregration occurs ( unlike WHERE, which filters individual
 rows before grouping)
*/
--Calculate the number of agents and the average commission rate per working_area
SELECT working_area, count(agent_code) AS total_agents, AVG(commission) AS avg_commission
FROM agents
GROUP BY working_area;

SELECT * FROM agents;

SELECT working_area, count(agent_code) AS total_agents, AVG(commission) AS avg_commission
FROM agents
GROUP BY working_area
HAVING AVG(commission) > 0.13;


-- combining both where, group by and having
SELECT working_area, count(agent_code) AS eligible_agents , AVG(commission) AS avg_commission
FROM agents
WHERE commission >= 0.13
GROUP BY working_area
HAVING count(agent_code) >= 2
