-- group by -- 특정 값에 따라서 그룹화 하는데 사용한다.


SELECT
category_code
FROM tbl_menu
GROUP BY category_code;

-- count ()
SELECT 
category_code,
count(*) -- 각 그룹이 몇개 있는지 
FROM tbl_menu
GROUP BY category_code;

-- sum()
SELECT
 category_code,
 sum(menu_price)
 FROM tbl_menu
 GROUP BY category_code; 
 
 -- AVG() 평균값 구하기
 SELECT 
 category_code,
 AVG(menu_price)
 FROM tbl_menu
 GROUP BY category_code ; -- 그룹에서 프라이스 평균값 구하기 
 
 -- 여러가지 그룹
 select
 menu_price,
 category_code
 from tbl_menu
 group by
 menu_price,
 category_code;
 
 -- HAVING()
 SELECT
  menu_price,
  category_code
  FROM tbl_menu
  GROUP BY
  menu_price,
  category_code
  HAVING
  category_code >=5 and category_code <=8;
 