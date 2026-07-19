-- SECTION E - COUNT

-- Q27. How many students are currently in Form 3? Write the query.
select count (*) as total_students_Form_3
from greenwood_academy.students
where class = 'Form 3';

-- Q28. How many exam results have a mark of 70 or above? Write the query.

select count(*)
from greenwood_academy.exam_results
where marks >= 70;