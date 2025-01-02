# 고유값만 보기
SELECT DISTINCT(gender)
FROM copang_main.member ;


# SUBSTRING 은 column, A로 번째 부터 n개 추출
SELECT DISTINCT(SUBSTRING(address,1,2))
FROM copang_main.member ;

# LENGTH() 무자열 길이
# UPPER() 대문자로 보여주는 함수
# LOWER() 소문자로 보여주는 함수

# LPAD(), RPAD() left or right로 특정 문자열을 채워주는 함수
# PADDING 줄임말 LPAD(age,n,'문자열') 특정 문자열을 포함시켜 n개의 길이로 만들어줘

SELECT *
FROM copang_main.trim_test ;

# TRIM(), LTRIM(), RTRIM() 함수 - 문자열에 존재하는 공백을 제거하는 함수들
# L은 왼쪽 공백 삭제, R은 오른쪽 공백 삭제, TRIM은 양쪽의 공백 삭제 (문자열 내부의 공백을 삭제하는 것은 아님!)
SELECT LTRIM(word)
FROM copang_main.trim_test ;