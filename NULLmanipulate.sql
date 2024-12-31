SELECT * FROM copang_main.member;

#데이터 특성 구하기

# row 개수 구하기
SELECT count(age) FROM copang_main.member;
# count는 null의 개수는 제외하고 보여줌
SELECT count(*) FROM copang_main.member;
# 이러면 전체

# 최대값 최소값
SELECT max(height) FROM copang_main.member;
SELECT min(age) FROM copang_main.member;

# 평균
SELECT AVG(weight) FROM copang_main.member;


# SUM(), STD()
# 위에서 사용했던 함수들이 다 Aggregate Fuction

# Mathematical Fuction
# ABS() 절대값
# SQRT() 제곱근
# CEIL() 올림
# FLOOR() 내림
# ROUND() 반올림
SELECT FLOOR(weight) FROM copang_main.member






