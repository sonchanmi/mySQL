-- distinct 중복값 제거

SELECT
DISTINCT category_code
FROM tbl_menu
ORDER BY category_code;


-- 다중 열 distinct

SELECT  DISTINCT
category_code, 
orderable_status
from tbl_menu;


-- LIMIT 반환할 행의 수를 제한

select
 menu_code,
 menu_name,
 menu_price
 FROM tbl_menu
 ORDER BY menu_price DESC
 LIMIT 1,4; -- 내림차순으로 price가 1다음인 2,3,4,5 출력됨
 
 SELECT
 menu_code,
 menu_name,
 menu_price
 from tbl_menu
 ORDER BY menu_price DESC
 LIMIT 5; -- 콤마 없고 범위 설정 없으니까 그대로 출력됨
 
 
 
 
