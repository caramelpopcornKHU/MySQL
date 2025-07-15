USE newhr;
# 부서별로 평균급여를 출력합니다.
# 단, 부서명과 부서위치 도시명도 출력합니다
-- 짝수년도에 입사한 직원만 평균합니다.
-- 평균급여는 천단위 이하를 버립니다.
-- 평균급여가 많은 순서로 정렬합니다.

SELECT 
     d.department_id
    , l.city
    , format(truncate(AVG(e.salary),-3),0) AS '평균급여'
FROM
    departments d
        JOIN
    locations l USING (location_id)
        LEFT OUTER JOIN
    employees e USING (department_id)
WHERE
    YEAR(e.hire_date) % 2 = 0
GROUP BY d.department_id
HAVING AVG(e.salary) >= 7000
ORDER BY AVG(e.salary) DESC
