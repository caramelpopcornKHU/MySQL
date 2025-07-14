USE newhr;
/*
급여의 등급을 함께 출력하시오.
부서번호, 성명, 급여, 급여등급
5000이하이면 C,
10000이하이면 B, 
15000이하이면 A,
15000을 초과하면 S
*/

SELECT 
	department_id AS '부서번호'
    ,CONCAT(first_name, ' ', last_name) AS '성명'
    ,salary
    ,CASE
		WHEN salary <= 5000 THEN 'C'
        WHEN salary <= 10000 THEN 'B'
        WHEN salary <= 15000 THEN 'A'
        ELSE  'S'
	END AS '급여등급'
FROM employees
ORDER BY salary DESC
        