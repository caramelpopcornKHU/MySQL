# 코팡은 20 30 쇼핑몰인데 평균이 43세 이상함
SELECT AVG(age) FROM copang_main.member;

SELECT AVG(age) FROM copang_main.member
WHERE age BETWEEN 5 AND 100
;

# 주소 컬럼 보면 안드로메다 B612이런 잘못된 주소도 있음
SELECT * FROM copang_main.member;

# 정상인 주소만 조회
SELECT * FROM copang_main.member
WHERE address LIKE  '%호'
;

