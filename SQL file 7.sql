-- 서브쿼리

SELECT  -- 메인쿼리
 menu_code,
 menu_name,
 menu_price,
 category_code,
 orderable_status
 FROM tbl_menu
 WHERE category_code = (
 SELECT -- 서브쿼리
  category_code
  FROM tbl_menu
  WHERE menu_name = '민트미역국'
 );
 
 
 -- max() 제일 큰 값 호출
 SELECT max(menu_price) FROM tbl_menu;
 
 SELECT
 max(count)
 FROM(
 SELECT 
 count(*) AS 'count'
 FROM tbl_menu
 GROUP BY category_code
 
 ) AS countMenu; -- view 
 
  SELECT 
  category_code,
 count(*) AS 'count'
 FROM tbl_menu
 GROUP BY category_code;
 
 
 -- 메뉴의 평균 가격보다 높은 것들의 모든 컬럼을 출력하기 
 SELECT
 menu_code,
 menu_name,
 menu_price,
 category_code,
 orderable_status
from tbl_menu
WHERE menu_price > (
SELECT
AVG(menu_price)
FROM tbl_menu
);


SELECT
 
AVG(menu_price)
from tbl_menu;




 
 