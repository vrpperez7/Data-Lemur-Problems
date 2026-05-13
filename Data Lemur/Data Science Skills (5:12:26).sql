SELECT candidate_id
FROM candidates
-- conditionals for candidate that we are looking for
WHERE (skill = 'Python') OR (skill = 'Tableau') OR (skill = 'PostgreSQL')
-- grouping by each candidate to count their skills after filtering
GROUP BY candidate_id
-- conditional as candidate must have all 3 skills to be best suited
HAVING COUNT(skill) = 3
ORDER BY candidate_id ASC