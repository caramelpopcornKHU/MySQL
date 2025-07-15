USE newhr;

/*
다음쿼리를 서브쿼리 만으로 수정합니다.
<join쓰지마세요>

select concat(e.last_name, ' ', e.first_name) 성명
    , e.salary 급여 , e.hire_date 입사일자, d.department_name, l.city
from employees e
    join departments d on e.department_id = d.department_id
    join locations l on d.location_id = l.location_id
where l.city = 'Seattle';
*/
SELECT 
    CONCAT(e.last_name, ' ', e.first_name) 성명,
    e.salary 급여,
    e.hire_date 입사일자
    
FROM
    employees e
        JOIN
    departments d ON e.department_id = d.department_id
        JOIN
    locations l ON d.location_id = l.location_id
WHERE
    l.city = 'Seattle';
    
# Seattle / location_id = 1700
# Seattle인 부서
SELECT department_id
FROM departments
WHERE location_id = 1700;

SELECT 
    CONCAT(e.last_name, ' ', e.first_name) 성명,
    e.salary 급여,
    e.hire_date 입사일자
FROM
    employees e
WHERE
    department_id = ANY (SELECT 
            department_id
        FROM
            departments
        WHERE
            location_id = (SELECT 
                    location_id
                FROM
                    locations
                WHERE
                    city = 'Seattle'))
    

