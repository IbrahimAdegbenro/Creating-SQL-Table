


SELECT* FROM github;
SELECT DISTINCT topic COLUMN FROM github;
SELECT repo_name,star_count FROM github  ORDER BY star_count DESC;
SELECT DISTINCT topic FROM github ORDER BY topic ASC;
SELECT repo_name FROM github WHERE star_count > 2000;
SELECT repo_name FROM github WHERE topic = '3d';
SELECT repo_name FROM github WHERE topic IN ('aws','azure','chrome_topics') 
AND star_count < 1000;
SELECT user_name,repo_name,repo_link FROM github WHERE LOWER(repo_link) LIKE'%ext%';
SELECT*  FROM github WHERE topic='chrome' AND star_count > 5000;
SELECT* user_name,repo_name FROM github WHERE star_count > 1000 AND star_count < 15000;
