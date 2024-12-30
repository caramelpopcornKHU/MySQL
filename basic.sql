USE copang_main;

SELECT * FROM member 
WHERE (age BETWEEN 20 AND 29) AND (weight > 50)
ORDER BY YEAR(sign_up_day) ASC, age DESC
LIMIT 5, 3
;