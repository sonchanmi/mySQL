-- 책 대여 시스템
	
DROP TABLE IF EXISTS lb_reviews CASCADE;		
DROP TABLE IF EXISTS lb_book CASCADE;		
DROP TABLE IF EXISTS lb_rental CASCADE;		
DROP TABLE IF EXISTS lb_member CASCADE;		
		

-- 책정보		
CREATE TABLE IF NOT EXISTS lb_book (		
book_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',		
book_title VARCHAR(100) NOT NULL COMMENT '제목',		
book_author VARCHAR(30) COMMENT '작가',		
book_pulisher VARCHAR(30) COMMENT '출판사',		
book_publish_date TIMESTAMP COMMENT '출판일',		
book_ISBN CHAR(5) COMMENT 'ISBN',		
book_genre VARCHAR(30) COMMENT '장르',		
book_borrow_status CHAR(1) NOT NULL COMMENT '대여 가능 상태; y/n'		
)ENGINE=INNODB COMMENT '책 정보';		
	
 -- 책 정보 
INSERT INTO lb_book VALUES 
(NULL, 'test', 'johnsmith', '황금가지', '2021-03-01', '12345', 'novel', 'Y'),					
(NULL, 'music', 'sam', '민음사', '2024-03-13', '32545', 'essay', 'N'),				 	
(NULL, 'book', 'liliy', 'ybm', '2015-05-22', '34589', 'language', 'Y'),					
(NULL, 'amazon', 'sophie', '민음사', '2013-11-01', '45789', 'study', 'N'),					
(NULL, 'chocolate', 'johnsmith', 'peach', '2020-01-24', '67432', 'cooking', 'Y');										
SELECT * FROM lb_book;					
		
        
 -- 회원정보
CREATE TABLE IF NOT EXISTS lb_member(		
mb_id int AUTO_INCREMENT COMMENT '회원ID' ,		
mb_name VARCHAR(100) NOT NULL COMMENT '회원이름',		
mb_email VARCHAR(100) NOT NULL COMMENT'회원이메일',		
mb_phone VARCHAR(100) NOT NULL COMMENT '연락처',
mb_date DATE NOT NULL COMMENT '대여일',
PRIMARY KEY (mb_id)		
)ENGINE=InnoDB comment '회원정보'; 		

-- 회원정보
INSERT into lb_member
 VALUES
 (NULL,'user01','songpa@naver.com','010-3333-333',date(now())),
 (null,'user02','songpa@daum.net','010-2222,222',date(now())),
(NULL,'user03','songpa@gmail.com','010-1111-111',date(now())),
(NULL,'user04','songpa@git.hub','010-4444-444',date(now())),
(NULL,'user05','songpa@notion.com','010-5555-555',date(now()));

 SELECT * FROM lb_member;					

		
		
		
	-- 책평점	
CREATE TABLE IF NOT EXISTS book_reviews (
review_id INT AUTO_INCREMENT PRIMARY KEY COMMENT '리뷰ID',
mb_id VARCHAR(30) NOT NULL COMMENT '회원ID',
book_id INT NOT NULL COMMENT '책ID',
content TEXT NOT NULL COMMENT '내용',
rating DECIMAL(3, 2) NOT NULL COMMENT '평점',
created_date DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '작성일',
FOREIGN KEY (mb_id) REFERENCES customers(mb_id),
FOREIGN KEY (book_id) REFERENCES books(book_id)
) ENGINE=INNODB COMMENT '리뷰관리';
		
		INSERT INTO lb_reviews VALUES(null, 01 ,'해리포터','good','5',date(now()));		
SELECT * FROM lb_reviews;		
		
	-- 대여 정보 	
						
						
	CREATE TABLE IF NOT EXISTS lb_rental(					
	rental_id   INT AUTO_INCREMENT COMMENT'대여ID' ,					
	ref_mb_id  INT NOT NULL COMMENT'회원ID',					
	book_id INT NOT NULL COMMENT'책ID',					
	book_title VARCHAR(100) NOT NULL COMMENT '제목',					
	rental_date  DATE NOT NULL COMMENT'대여일',					
	rental_return DATE NOT NULL COMMENT'반납일',					
	book_borrow_status CHAR(1) NOT NULL COMMENT '대여가능상태; y/n',					
	PRIMARY KEY (rental_id),					
	FOREIGN KEY (ref_mb_id) REFERENCES lb_member(mb_id)					
	) ENGINE=INNODB COMMENT '대여정보';							

INSERT INTO lb_rental VALUES (null, 01, 5678, '인어공주', DATE(now()),ADDDATE(DATE(NOW()), INTERVAL 15 DAY),'Y'),			
 (null, 02, 1542, '백설공주', DATE(now()),ADDDATE(DATE(NOW()), INTERVAL 15 DAY),'Y'),		
(null, 03, 118, '신데렐라', DATE(now()),ADDDATE(DATE(NOW()), INTERVAL 15 DAY),'Y'),			
 (null, 04, 22, '미녀와야수', DATE(now()),ADDDATE(DATE(NOW()), INTERVAL 15 DAY),'Y'),			
 (null, 05, 8, '라푼젤', DATE(now()),ADDDATE(DATE(NOW()), INTERVAL 15 DAY),'Y');			
				
