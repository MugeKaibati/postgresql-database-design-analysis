-- SECTION C - Querying the Data (Filtering with WHERE)

--Q15. Write a query to find all students who are in Form 4.

select *
from greenwood_academy.students
where class = 'Form 4';


-- Q16. Write a query to find all subjects in the Sciences department.

select *
from greenwood_academy.subjects
where department = 'Sciences';

-- Q17. Write a query to find all exam results where the marks are greater than or equal to 70.
select *
from greenwood_academy.exam_results 
where marks >= 70;

-- Q18. Write a query to find all female students only. (Hint: gender = 'F')
select *
from greenwood_academy.students
where gender = 'F';

-- Q19. Write a query to find all students who are in Form 3 AND from Nairobi.
select *
from greenwood_academy.students
where city = 'Nairobi' and class = 'Form 3';


-- Q20. Write a query to find all students who are in Form 2 OR Form 4.

select *
from greenwood_academy.students
where class = 'Form 2' or class = 'Form 4';