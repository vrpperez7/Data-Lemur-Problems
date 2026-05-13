-- query oututs the page_id for pages that were not liked
SELECT p.page_id
FROM pages p
-- joining to find NULL values (means hasn't been liked)
LEFT JOIN page_likes pl ON pl.page_id = p.page_id
-- filtering to find only the NULL values
WHERE liked_date IS NULL
ORDER BY p.page_id ASC