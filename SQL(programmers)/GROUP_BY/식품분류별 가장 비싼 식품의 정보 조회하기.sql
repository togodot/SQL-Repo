-- < 식품분류별 가장 비싼 식품의 정보 조회하기 >
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131116

SELECT A.CATEGORY, A.PRICE as MAX_PRICE, A.PRODUCT_NAME
FROM FOOD_PRODUCT A JOIN (
    SELECT CATEGORY, MAX(PRICE) as PRICE
    FROM FOOD_PRODUCT
    GROUP BY CATEGORY) B
    ON A.CATEGORY = B.CATEGORY AND A.PRICE = B.PRICE
WHERE A.CATEGORY IN ('과자', '국', '김치', '식용유')
ORDER BY MAX_PRICE DESC;
