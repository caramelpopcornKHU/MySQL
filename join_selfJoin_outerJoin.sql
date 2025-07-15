USE newhr;
# 사번, 성명, 급여, 입사일자, 관리자사번, 관리자명, 입사일자
-- 관리자가 존재하지 않는 경우 관리자없음을 출력합니다.
SELECT 
	 emp.employee_id AS '사번'
	,CONCAT(emp.first_name,' ',emp.last_name) AS '성명'
    ,emp.salary AS salary
    ,DATE_FORMAT(emp.hire_date,'%Y-%m-%d') AS '입사일자'
    ,COALESCE(emp.manager_id,'관리자없음') AS '관리자사번'
    ,COALESCE(CONCAT(man.first_name,' ',man.last_name), '없음') AS '관리자이름'
    ,COALESCE(DATE_FORMAT(man.hire_date,'%Y-%m-%d'),'없음') AS '관리자입사일자'
FROM 
employees emp LEFT OUTER JOIN employees man ON emp.manager_id = man.employee_id;


# 부서번호, 부서명, 부서장사번, 부서장명을 출력합니다.
-- 부서장이 없으면 부서장사번, 부서장명을 부서장없음이라고 출력합니다.

SELECT 
	 d.department_id AS '부서번호'
	,d.department_name AS '부서명'
    ,COALESCE(d.manager_id,'부서장없음') AS '부서장사번'
    ,COALESCE(CONCAT(e.first_name ,' ',e.last_name),'부서장없음') AS '부서장명'
FROM 
departments d LEFT OUTER JOIN employees e ON d.manager_id = e.employee_id
;
