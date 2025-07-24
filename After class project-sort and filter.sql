CREATE TABLE IF NOT EXISTS HACKER_NEWS (
    ID VARCHAR PRIMARY KEY,
    TITLE TEXT,
    AUTHOR TEXT,
    POINTS INTEGER
);

INSERT INTO HACKER_NEWS (ID, TITLE, AUTHOR, POINTS) VALUES
(1, 'AI beats doctors', 'A', 350),
(2, 'Startup raises $10M', 'B', 420),
(3, 'Han Kang wins Nobel prize in literature', 'C', 300),
(4, '15 year old discovers new star', 'D', 500),
(5, '110th plane crash of the year', 'E', 150);

SELECT AUTHOR, SUM(POINTS) AS TOTAL_POINTS
FROM HACKER_NEWS
GROUP BY AUTHOR
HAVING TOTAL_POINTS > 300;