/*
2000년1월1일 이후 입사자입니다.

- 연봉은 커미션을 반영한 급여의 12배입니다.
- 연봉은 원화로 표시합니다.(환율 : 1389)
- 연봉은 천원 단위로 반올림합니다.
- 연봉은 천원 단위로 콤마를 부여합니다.
- 근속년수는 소수2째자리까지 표시합니다.
- 성명은 성과 명을 합하여 출력합니다. 각 첫글자를 대문자로 합니다.
*/
USE newhr;
-- SELECT *
SELECT 
FORMAT(ROUND(((salary * 12 + COALESCE(commission_pct, 0)) * 1389),-3 ), 0) AS 연봉
,ROUND(DATEDIFF(CURDATE(), hire_date) / 365.5  ,2) AS 근속년수
,CONCAT(SUBSTR(first_name,1,1), SUBSTR(first_name,2),' ', last_name) AS 성명
FROM employees
WHERE hire_date > 2000-01-01
;