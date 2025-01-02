# GROUP BY 로 그루핑
SELECT gender
FROM copang_main.member 
GROUP BY gender;

# grouping에 Aggregate fuction(집계 함수) 적용
# - 그루핑을 통해 생성된 각 그룹의 수치적인 특성을 구하는 함수
SELECT gender, COUNT(*), AVG(height), MIN(height)
FROM copang_main.member 
GROUP BY gender;

#---------
# 여러 columns 기준

SELECT 
	SUBSTRING(address,1,2) AS region,
    gender,
    COUNT(*)

FROM copang_main.member 
GROUP BY 
	SUBSTRING(address,1,2),
    gender
;

# 여러 columns 기준 중에 특정 조건만

SELECT 
	SUBSTRING(address,1,2) AS region,
    gender,
    COUNT(*)

FROM copang_main.member 
GROUP BY 
	SUBSTRING(address,1,2),
    gender
HAVING region = '서울' AND gender = 'm'
;


# NULL 제거하고

SELECT 
	SUBSTRING(address,1,2) AS region,
    gender,
    COUNT(*)

FROM copang_main.member 
GROUP BY 
	SUBSTRING(address,1,2),
    gender
HAVING region IS NOT NULL
ORDER BY
	region ASC,
    gender DESC
;

# 실행 순서
# FROM - WHERE - GROUP BY - HAVING - SELECT - ORDER BY - LIMIT
