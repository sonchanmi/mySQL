-- DML (Data Manipulation Language) 데이터 조작 언어
-- 테이블에 값을 삽입하거나 수정하거나 삭제하는 언어
-- INSERT, update , delete, SELECT

-- insert
-- 새로운 행을 추가하는 구문이다. 테이블의 행의 수가 증가한다. , 실행시킨만큼 실행됨
INSERT INTO tbl_menu(
 menu_code,
 menu_name,
 menu_price,
 category_code,
 orderable_status
)VALUES(
 null -- NULL 을 넣어주면서 순서대로 출력됨 
 '바나나 해장국',
 8500,
 4,
 'Y'
);
SELECT * FROM tbl_menu;


INSERT INTO tbl_menu VALUES(null, '바나나해장국',8500,4,'Y');

-- VALUES> 
INSERT INTO tbl_menu(
orderable_status,
menu_price,
menu_name,
category_code
)VALUES(
'Y',
5500,
'파인애플탕',
4
);
SELECT * FROM tbl_menu;


INSERT INTO tbl_menu
VALUE(
 NULL,
 '순대국밥',
 8500,
 (SELECT category_code FROM tbl_category WHERE category_name= '한식'), -- 카테고리 코드 4번 풀어서 설명
 'Y'
);
SELECT * FROM tbl_menu;

INSERT INTO tbl_menu
VALUES
(NULL , '참치아이스크림', 1700,12, 'Y'),
(NULL, '멸치아이스크림', 1500,11, 'Y');
SELECT * FROM tbl_menu;

-- update
-- 테이블에 기록된 컬럼의 값을 수정하는 구문이다. 전체 행 갯수는 변화가 없다. ALTER
UPDATE tbl_menu
SET menu_name = "델몬트바나나" -- 바꿔줄 테이블 선언
WHERE menu_name = "바나나해장국";
SELECT * FROM tbl_menu;

UPDATE tbl_menu
SET category_code = 6 
WHERE menu_price IN (
SELECT
menu_price
FROM (SELECT * FROM tbl_menu) as a
where menu_name ='델몬트바나나'
);
SELECT * FROM tbl_menu;

-- DELETE
-- 행을 삭제하는 구문이다. 테이블의 행의 갯수가 줄어든다. 

DELETE FROM tbl_menu
 where menu_name ='델몬트 바나나';
 SELECT * FROM tbl_menu;
 
 DELETE FROM tbl_menu
 ORDER BY menu_price DESC
 LIMIT 2; -- 2번째 줄 까지 없애줌
 SELECT * from tbl_menu ORDER BY menu_price desc;
 
 SELECT
 *
 FROM tbl_menu
 where orderable_status = 'Y';
 
 UPDATE tbl_menu SET orderable_status= 'N'
 where menu_code =26;
 SELECT * from tbl_menu;
 
-- insert 시에 충돌이 발생할 수 있다면 replace 를 통해 중복된 데이터를 덮어 쓸 수 있다. 
REPLACE into tbl_menu VALUES(1, '참기름라떼',5000, 10, 'Y'); 
 SELECT * from tbl_menu;
