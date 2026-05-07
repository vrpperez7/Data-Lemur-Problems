/* HISTOGRAM OF TWEETS
MEANT TO BE RUN WITH POSTGRESQL
*/

-- creating a CTE to group users with their number of tweets
WITH user_tweets AS(
SELECT COUNT(tweet_id) as tweet_bucket, user_id
FROM tweets
  -- question specifies the date to be within 2022
WHERE tweet_date >= '01/01/2022' AND tweet_date < '01/01/2023'
GROUP BY user_id
)

--grouping by previous tweet bucket in CTE to count the number of users within each bucket
SELECT tweet_bucket, COUNT(user_id) as users_num
FROM user_tweets
GROUP BY tweet_bucket