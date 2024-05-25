-- join 두 개 이상의 테이블을 결합하는데 사용

-- AS

SELECT
menu_code 'aa',
menu_name as name,
menu_price 'wwa'
FROM tbl_menu
ORDER BY wwa;


SELECT
 a.category_code,
 a.menu_name
from tbl_menu as a
ORDER BY
a.category_code,
a.menu_name;

-- inner join (교집합 반환)
SELECT 
  a.menu_name,
  b.category_name
  FROM tbl_menu a 
  JOIN tbl_category b  on a.category_code = b.category_code;
	
    
	
  
select
  a.menu_name,
  b.category_name
  FROM tbl_menu a
  INNER JOIN tbl_category b USING (category_code);
  
  -- left join
  SELECT
  a.category_name,
  b.menu_name
  FROM tbl_category a 
  LEFT join tbl_menu b on a.category_code = b.category_code;
  
  -- right join
    SELECT
  a.category_name,
  b.menu_name
  FROM tbl_category a 
  RIGHT join tbl_menu b on a.category_code = b.category_code;
  