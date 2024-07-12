--snowflake environment
WITH split_cat AS (
    SELECT review_count, value as category 
    FROM yelp_business, LATERAL FLATTEN(input => SPLIT(categories, ';')) 
)

SELECT category, sum(review_count) AS review_cnt
FROM split_cat
GROUP BY category
ORDER BY review_cnt DESC

--postgresql environment
WITH split_cat AS (
    SELECT review_count, TRIM(UNNEST(STRING_TO_ARRAY(categories, ';'))) as category 
    FROM yelp_business 
)

SELECT category, sum(review_count) AS review_cnt
FROM split_cat
GROUP BY category
ORDER BY review_cnt DESC
