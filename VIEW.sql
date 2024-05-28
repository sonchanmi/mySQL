-- VIEW

/* 
  SELECT 문을 저장한 객체로, 가상 테이블 이라고 불린다.
  실질적인 데이터를 물리적으로 저장하고 있지 않고, 쿼리만 저장했지만
  테이블을 사용하는 것과 동일하게 사용할 수 있다. 
  데이터를 쉽게 읽고 이해할 수 있도록 돕는 동시에 원본 데이터의 보안을 유지하는데 도움이 된다 */
  
  -- view 생성 후 조회
  
  CREATE view hansik as
  SELECT 
  menu_code,
  menu_name,
  menu_price,
  category_code,
  orderable_status
  FROM tbl_menu
  where category_code =4;
  
  SELECT * FROM hansik;
  
  INSERT into tbl_menu VALUES(null, '식혜맛 국밥', 5500,4,'Y');
  
  SELECT * FROM hansik;
  
  -- view를 통한 DML 
  
INSERT INTO hansik VALUES(97,'수정과맛국밥',5500,4,'Y'); -- view는 오토인클리먼트가 안돼서 null 안됨, 값 지정해줘야함

SELECT * FROM tbl_menu limit 100;

UPDATE hansik set menu_name= '버터맛국밥',menu_price = 5700
where menu_code=99;
SELECT * FROM tbl_menu;

DELETE from hanik where menu_code=99;
SELECT * FROM tbl_menu;


-- view 로 dml 명령어로 조작이 불가능한 경우
/*
1. 뷰 정의에 포함되지 않은 컬럼을 조작하는 경우
2. 뷰에 포함되지 않은 컬럼중에 베이스가 되는 컬럼이 not null 제약조건에 지정된 경우
3. 산술 표현식이 정의된 경우
4. join 을 이용해 여러 테이블을 연결한 경우
5. DISTINCT(중복제거) 를 포함한 경우
6. 그룹함수나 GROUP BY 절을 포함한 경우 */

DROP VIEW hansik;

create or REPLACE view hansik as
SELECT
menu_code as '메뉴코드',
menu_name as '메뉴명',
category_name as '카테고리명'
from tbl_menu a
join tbl_category b on a.category_code= b.category_code
where b.category_name ='한식';

SELECT * FROM hasick;