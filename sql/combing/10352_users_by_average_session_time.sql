--my solution
--step1, CTE group user_id, action and day to keep lastest page_load and earliest page_exit
WITH Session_load AS (
    SELECT user_id, action, DATE(timestamp) AS session_date, MAX(timestamp) AS latest_load
    FROM facebook_web_log
    WHERE action = 'page_load'
    GROUP BY user_id, action, DATE(timestamp)
), Session_exit AS (
    SELECT user_id, action, DATE(timestamp) AS session_date, MIN(timestamp) AS early_exit
    FROM facebook_web_log
    WHERE action = 'page_exit'
    GROUP BY user_id, action, DATE(timestamp)
)
--step2, average session time
SELECT Session_exit.user_id, AVG(early_exit - latest_load)
FROM Session_load
JOIN Session_exit
ON Session_exit.user_id = Session_load.user_id
AND Session_exit.session_date = Session_load.session_date
GROUP BY Session_exit.user_id;

--chatgpt
-- Step 1: CTE to get the latest page_load and earliest page_exit per user_id per day
WITH SessionTimes AS (
    SELECT
        user_id,
        DATE(timestamp) AS session_date,
        MAX(CASE WHEN action = 'page_load' THEN timestamp END) AS load_time,
        MIN(CASE WHEN action = 'page_exit' THEN timestamp END) AS exit_time
    FROM
        facebook_web_log
    GROUP BY
        user_id, DATE(timestamp)
    HAVING
        MAX(CASE WHEN action = 'page_load' THEN timestamp END) IS NOT NULL
        AND MIN(CASE WHEN action = 'page_exit' THEN timestamp END) IS NOT NULL
        AND MAX(CASE WHEN action = 'page_load' THEN timestamp END) < 
            MIN(CASE WHEN action = 'page_exit' THEN timestamp END)
)

-- Step 2: Calculate the average session time
SELECT
    user_id,
    AVG(EXTRACT(EPOCH FROM (exit_time - load_time))) AS avg_session_time_seconds
FROM
    SessionTimes
GROUP BY
    user_id;
