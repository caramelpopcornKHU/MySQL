

SELECT * FROM copang_main.member;

# 결측치
SELECT * FROM copang_main.member
WHERE address IS NULL
;

# 결측치 제거하고 조회
SELECT * FROM copang_main.member
WHERE address IS NOT NULL
;


# 여러 결측치 조회
SELECT * FROM copang_main.member
WHERE address IS NULL
	OR weight IS NULL
    OR height IS NULL
;

# COALESCE(A,B) A가 NULL이 아니면 그대로, NULL이면 B
SELECT 
	COALESCE(height,'###'),
    COALESCE(weight,'@@@'),
    COALESCE(address,'~~~')

FROM copang_main.member;















