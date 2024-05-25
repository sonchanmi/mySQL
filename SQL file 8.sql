-- union 쿼리문위에값이랑 쿼리문아래값 중복된 결과물 합친것, 서로 영향을 주지 않음 

SELECT
menu_code,
menu_name,
menu_price,
category_code,
orderable_status
FROM tbl_menu
WHERE category_code = 10
UNION
SELECT
menu_code,
menu_name,
menu_price,
category_code,
orderable_status
FROM tbl_menu
WHERE menu_price < 9000;


-- union all쿼리문위에값이랑 쿼리문아래값 중복된 결과물 합치지 않은 것 
SELECT
menu_code,
menu_name,
menu_price,
category_code,
orderable_status
FROM tbl_menu
WHERE category_code = 10
UNION All
SELECT
menu_code,
menu_name,
menu_price,
category_code,
orderable_status
FROM tbl_menu
WHERE menu_price < 9000;





