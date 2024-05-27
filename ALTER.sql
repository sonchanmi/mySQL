-- ALTER
-- 테이블에 추가, 변경 , 삭제 하는 모든 것은 ALTER 명령어를 사용해 적용한다. 
-- 종류가 너무 많고 복잡하므로 대표적인 것들 살펴본다. 

ALTER TABLE tb2
ADD col2 INT; -- add새로운 열 추가

DESCRIBE tb2;

ALTER TABLE tb2
DROP COLUMN col2; -- DROP=col2 지우기

DESCRIBE tb2;

ALTER TABLE tb2
CHANGE COLUMN fk change_fk INT NOT NULL; -- CHANGE는 이름컬럼 바꾸기 
DESCRIBE tb2;

ALTER TABLE tb2
DROP PRIMARY KEY; -- 오토인플리 먼트 제거해야 실행됨= primary key 제거해야지 이름변경가능

ALTER TABLE tb2
MODIFY pk INT;
DESCRIBE tb2; 

-- DROP
-- 테이블을 삭제하기 위한 구문

DROP TABLE IF EXISTS tb1, tb2;


