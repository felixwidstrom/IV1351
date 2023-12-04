--Show the number of lessons given per month during a specified year.

SELECT
    TO_CHAR(t.date, 'Mon') AS month,
    COUNT(*) AS total,
	COUNT(*) FILTER(WHERE l.lesson_type = 'Individual') AS individual,
	COUNT(*) FILTER(WHERE l.lesson_type = 'Group') AS group,
	COUNT(*) FILTER(WHERE l.lesson_type = 'Ensemble') AS ensemble
FROM
    lessons l
JOIN
    timeslots t ON l.timeslot_id = t.timeslot_id
WHERE
    EXTRACT(YEAR FROM t.date) = 2023
GROUP BY
    TO_CHAR(t.date, 'Mon')
ORDER BY
    month DESC;

--EXPLAIN ANALYZE

/*"GroupAggregate  (cost=3.42..3.46 rows=1 width=64) (actual time=0.121..0.131 rows=3 loops=1)"
"  Group Key: (to_char((t.date)::timestamp with time zone, 'Mon'::text))"
"  ->  Sort  (cost=3.42..3.42 rows=1 width=40) (actual time=0.114..0.116 rows=50 loops=1)"
"        Sort Key: (to_char((t.date)::timestamp with time zone, 'Mon'::text)) DESC"
"        Sort Method: quicksort  Memory: 26kB"
"        ->  Hash Join  (cost=1.76..3.41 rows=1 width=40) (actual time=0.068..0.093 rows=50 loops=1)"
"              Hash Cond: (l.timeslot_id = t.timeslot_id)"
"              ->  Seq Scan on lessons l  (cost=0.00..1.50 rows=50 width=12) (actual time=0.010..0.012 rows=50 loops=1)"
"              ->  Hash  (cost=1.75..1.75 rows=1 width=8) (actual time=0.034..0.035 rows=50 loops=1)"
"                    Buckets: 1024  Batches: 1  Memory Usage: 10kB"
"                    ->  Seq Scan on timeslots t  (cost=0.00..1.75 rows=1 width=8) (actual time=0.012..0.025 rows=50 loops=1)"
"                          Filter: (EXTRACT(year FROM date) = '2023'::numeric)"
"Planning Time: 0.299 ms"
"Execution Time: 0.165 ms"*/

--Show how many students there are with no sibling, with one sibling, with two siblings, etc.

SELECT
    sibling_count,
    COUNT(*) AS student_count
FROM (
    SELECT
        st.student_id,
        COUNT(s.sibling_id) AS sibling_count
    FROM
        students st
    LEFT JOIN
        siblings s ON st.student_id = s.student_id
    GROUP BY
        st.student_id
)
GROUP BY
    sibling_count
ORDER BY
    sibling_count;

--List ids and names of all instructors who has given more than a specific number of lessons during the current month.

SELECT
    i.instructor_id,
    i.name,
    COUNT(*) AS lessons_given
FROM
    instructor_availability ia
JOIN
    timeslots t ON ia.timeslot_id = t.timeslot_id
JOIN
    instructors i ON ia.instructor_id = i.instructor_id
WHERE
    EXTRACT(MONTH FROM t.date) = EXTRACT(MONTH FROM CURRENT_DATE)
GROUP BY
    i.instructor_id, i.name
HAVING
    COUNT(*) > 0;

--List all ensembles held during the next week

SELECT
	TO_CHAR(t.date, 'Dy') AS weekday,
	l.genre,
    CASE
		WHEN l.enrolled >= l.max_enrolled THEN 'Fully Booked'
        WHEN l.enrolled >= l.max_enrolled - 2 THEN '1-2 Seats Left'
        ELSE 'More Seats Left'
    END AS availability
FROM
    lessons l
JOIN
    timeslots t ON l.timeslot_id = t.timeslot_id
WHERE
    l.lesson_type = 'Ensemble'
    AND EXTRACT(WEEK FROM t.date) = EXTRACT(WEEK FROM CURRENT_DATE) + 1
ORDER BY
    weekday DESC,
	l.genre;