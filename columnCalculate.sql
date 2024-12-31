# BMI 구하기 (컬럼끼리 산술 계산하기)
SELECT email, height, weight, weight / ((height / 100) * (height / 100))
FROM copang_main.member;

