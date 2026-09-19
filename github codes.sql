SELECT* FROM github;
SELECT DISTICT topic_column FROM github;
SELECT repo_name,star_count FROM github  ORDER BY star_count DESC;
SELECT DISTINCT topic FROM github ORDER BY topic ASC;
SELECT repo_name FROM github WHERE star_count > 2000;
SELECT repo_name FROM github WHERE star_count > 2000 AND topic(3) IS NOT NULL;


SELECT * FROM chrome_topic WHERE star_count > 5000

