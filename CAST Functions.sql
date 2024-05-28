-- CAST Functions
use menudb;
/* 명시적 형 변환 
  cast (expression as 데이터 형식[(길이)])
  convert (expreesion, 데이터 형식[(길이)]) */
  
  SELECT avg(menu_price) FROM tbl_menu;
  SELECT CAST(avg(menu_price)as signed integer) as '평균 메뉴 가격' FROM tbl_menu;
  SELECT CONVERT(avg(menu_price), signed integer) as '평균 메뉴 가격' from tbl_menu;
  
  SELECT CAST('2023%5%30' AS DATE);
  SELECT CAST('2023/5/30' AS DATE);
  SELECT CAST('2023%5%30' as date);
  SELECT cast('2023%5%30' as date);