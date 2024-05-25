-- where 특정 조건에 맞는 레코드만 선택하는데 사용

SELECT
menu_name,
menu_price,
orderable_status
FROM tbl_menu
WHERE orderable_status = 'Y';

SELECT
menu_code,
menu_name,
orderable_status
FROM tbl_menu
WHERE orderable_status != 'Y';

SELECT
menu_code,
menu_name,
menu_price
FROM tbl_menu
WHERE menu_price >= 20000;

SELECT
menu_name,
menu_price,
category_code,
orderable_status
FROM tbl_menu
WHERE
 orderable_status = 'Y' AND
 category_code = 10;
 
 SELECT
menu_code,
menu_name,
menu_price,
category_code,
orderable_status
FROM tbl_menu
WHERE
menu_price >5000 AND
category_code =10; 

SELECT
menu_name,
menu_price,
category_code,
orderable_status
from tbl_menu
WHERE
orderable_status='Y' or
category_code =10
ORDER BY category_code;

SELECT
menu_code,
menu_name,
menu_price,
category_code,
orderable_status
FROM tbl_menu
WHERE
category_code = 4 OR
menu_price = 9000 and -- 우선순위가 높음
menu_code >10; -- 얘도 and에 포함되어있음 

SELECT
menu_name,
menu_price,
category_code
FROM tbl_menu
WHERE
menu_price BETWEEN 10000 and 25000
ORDER BY menu_price;

SELECT
menu_name,
menu_price,
category_code
FROM tbl_menu
WHERE
menu_price not BETWEEN 10000 and 25000
ORDER BY menu_price;


--- Like

SELECT
menu_name,
menu_price
from tbl_menu
WHERE menu_name LIKE '%마늘%' -- 마늘이 텍스트사이에 들어있는 것 불러오는것
ORDER BY menu_name;  -- 퍼센트 가 앞에 하나인 것은 마늘이 텍스트 앞에 있는 것 불러옴

SELECT
menu_code,
menu_name,
menu_price,
category_code,
orderable_status
From tbl_menu
WHERE
menu_price > 5000 and
category_code = 10 and
menu_name like '%갈치%' ;

SELECT
menu_name,
menu_price
from tbl_menu
WHERE menu_name not LIKE '%마늘%' -- 마늘이 안들어 간것만 출력
ORDER BY menu_name; 

-- in
SELECT 
menu_name,
category_code
FROM tbl_menu
WHERE category_code in (4,5,6)
ORDER BY category_code;

-- in
SELECT 
menu_name,
category_code
FROM tbl_menu
WHERE category_code not IN (4,5,6)
ORDER BY category_code;

-- is null 

SELECT
category_code,
category_name,
ref_category_code
FROM tbl_category
WHERE ref_category_code is null;

SELECT
category_code,
category_name,
ref_category_code
FROM tbl_category
WHERE ref_category_code is not null;








