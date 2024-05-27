-- DDL (Date definition Language)
-- 데이터 베이스의 스키마를 정의하거나 수정하는 데 사용되는 것. 

-- CREATE
-- 테이블 생성을 위한 구문.
-- IF NOT EXISTS 를 적용하면 기존에 존재하는 테이블 이더라도 에러가 발생하지 않는다.


CREATE TABLE IF NOT EXISTS tbl(
   pk int primary key, 
   fk int, 
   col1 VARCHAR(255) -- 바차로 메모리 크기 조절 =string
  CHECK(col1 in ('Y','N')) -- col1 안에 y,n 만 받을 수 있게 제약조건 걺
)ENGINE = InnoDB; 
DESCRIBE tbl;

INSERT into tbl VALUES(1,10,'y');

SELECT * FROM tbl;

DROP TABLE IF EXISTS tb2;
CREATE TABLE if not EXISTS tb2 (
pk int AUTO_INCREMENT PRIMARY key, 
fk int, 
col1 VARCHAR(255),
CHECK(col1 in ('Y','N'))
)ENGINE = InnoDB;
DESCRIBE tb2; -- 전체 실행

INSERT INTO tb2 VALUES (NULL,10,'Y');
INSERT INTO tb2 VALUES (NULL,20,'Y');
INSERT INTO tb2 VALUES (NULL,30,'Y');

SELECT * FROM tb2; -- 지정값 실행 할 수 있음









