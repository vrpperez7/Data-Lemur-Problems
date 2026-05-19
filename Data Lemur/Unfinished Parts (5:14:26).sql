SELECT part, assembly_step
FROM parts_assembly
--filter for parts that are unfinished (finish_date doesn't exist)
WHERE finish_date IS NULL