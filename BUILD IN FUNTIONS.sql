-- BUILD IN FUNTIONS

-- 문자열 관련 함수

SELECT ascii('A');

-- CONCAT 문자열을 이어붙이는 함수

SELECT concat('호랑이','돼지');
SELECT concat_ws(',','호랑이','돼지'); -- 구분자
SELECT concat_ws('-','2023','05','30');

-- ELT(위치,문자열1,문자열2,....) ㅡ FIELD(찾을문자열, 문자열1, 문자열2,...)
-- FIND_IN_SET(찾을 문자열, 문자열 리스트..) INSTR(기존문자열,부분문자열)
-- LOCATE(부분문자열,기준문자열)

SELECT ELT(2,'사과','딸기','바나나'); -- 해당위치 문자열 반환
SELECT field('딸기','사과','딸기','바나나'); -- 찾을 문자열 위치 반환 (딸기 위치 찾기)
SELECT find_in_set('바나나','사과,딸기,바나나'); -- 찾을 문자열의 위치 반환 이어붙임 (바나나 위치 찾기)
SELECT instr('사과딸기바나나','딸기'); -- 기존 문자열에서 부분 문자열의 시작 위치 반환
SELECT locate('딸기','사과딸기바나나'); -- 인자 위치만 바뀐것임


-- FORMAT(숫자, 소수점 자릿수)
SELECT format(123123123123.456456, 3);

-- BIN()2진수 OCT()8진수 HEX()16진수
SELECT BIN(65), oct(65), hex(65);

-- INSERT(기존 문자열, 위치, 길이, 삽입할 문자열);
SELECT insert('내 이름은 아무개입니다. ',7,3,'홍길동'); -- 아무개가 홍길동으로 바뀜 띄어쓰기 포함

-- LEFT(문자열,길이) RIGHT(문자열, 길이)
SELECT left('HELLO WORLD',3), RIGHT('HELLO WORLD',3);


-- PUPER(문자열), LOWER(문자열) 대소문자
SELECT lower('HELLO WORLD'), UPPER('Hello World');

-- LPAD (문자열,길이,채울문자열) RPAD(문자열,길이,채울문자열)
SELECT LPAD('왼쪽',6,'@'), RPAD('오른쪽',6,'@');

-- LTRIM(문자열), RTRIM(문자열) 왼쪽 오른쪽 공백제거
SELECT ltrim('    왼쪽'), rtrim('오른쪽    ');

-- TRIM(문자열) 양쪽 공백제거
SELECT trim(' MYSQL  ' );
SELECT trim(BOTH '@' FROM '@@@MYSQL@@@');
-- LEADING (앞), BOTH(양쪽), TRAILING(뒤)

-- REPEAT(문자열,횟수)
SELECT repeat('MYSQL',3);  -- 문자열 뒤에적힌 숫자만큼 반복

-- REPLACE(문자열, 찾을 문자열,바꿀 문자열)
SELECT REPLACE('마이SQL', '마이', 'MY');

-- REVERSE(문자열을 거꾸로 뒤집기)
SELECT reverse('stressed');

-- SPACE(길이) 의도적으로 공백을 만들 수 있음
SELECT concat('제 이름은', SPACE(5), '이고 나이는',SPACE(3), '세 입니다.');

-- SUBSTRING(문자열,시작위치,길이)
SELECT substring('안녕하세요 반갑습니다',7,2); -- 길이 생략가능
SELECT substring('안녕하세요 반갑습니다',7);

-- SUBSTRING_INDEX(문자열,구분자,횟수)
SELECT substring_index('hong.test@gmail.com','.',2);




-- 수학 관련 함수

-- ABS(숫자) 절댓값
SELECT ABS(-123);

-- CEILIGN(숫자)올림, FLOOR(숫자)버림, ROUND(숫자)반올림
SELECT ceiling(1234.56), FLOOR(1234.56), round(1234.56);

-- CONV(숫자,원래 진수, 변환할 진수)
SELECT CONV('A',16,10), CONV(1010,2,8);


-- POW(숫자1,숫자2):곱한값 출력  SQRT(숫자):제곱근 추출
SELECT POW(2,4), sqrt(16);

-- RAND() 0이상 1미만의 실수
-- M과 N 사이의 임의의 정수를 구하려면
SELECT RAND(), floor(RAND() * (11-1)+1);

-- SING(숫자) 양수면 1, 음수면 -1 반환 , 0반환
SELECT sign(10.1), sign(0), sign(-10.1);

-- TRUNCATE(숫자,정수)
-- 소수점을 기준으로 정수 위치까지 구하고 나머지는 버린다. 
SELECT truncate(12345.12345, 2), truncate(12345.12345, -2); 
-- '2' 소수점 둘째자리 까지 구하고 나머지는 버림

-- ADDDATE(날짜, 차이)더해줌, SUBDATE(날짜,차이)빼줌
SELECT ADDDATE('2023-05-31', INTERVAL 30 DAY); -- 날짜 더해주기
SELECT subdate('2023-05-31', INTERVAL 30 DAY); -- 빼주기

-- ADDTIME(날짜/시간 , 시간), SUBTIME(날짜/시간, 시간)
SELECT addtime('2023-05-31 09:00:00', '1:0:1'); -- 시간 더해주기
SELECT subtime('2023-05-31 09:00:00', '1:0:1'); -- 빼주기

-- CURDATE(), CURTIME(), NOW(), SYSDATE(): 컴퓨터상 데이터
SELECT curdate(), curtime(), NOW(), sysdate(); -- 날짜, 시간 출력


SELECT YEAR(curdate()), month(curdate()),dayofmonth(curdate());
SELECT hour(cortime()), minute(curtime()), second(current_time()),microsecond(current_time());

SELECT date(now()), time(now());

-- datediff(날짜1, 날짜2), timediff(날짜또는시간1, 날짜또는시간2)
SELECT datediff('2024-05-30',now()); -- 현재시간에서 빼기
SELECT timediff('17:07:11', '13:06:10'); -- 시간 빼기

-- DAYOFWEEK(날짜), MONTHNAME(), DAYOFYEAR(날짜)
SELECT dayofweek(CURDATE());
SELECT monthname(CURDATE()); -- 지금이 몇번째 달인지
SELECT dayofyear(CURDATE()); -- 1월부터 현재까지 며칠이 지났는지 출력

-- LAST_DAY(날짜)
SELECT LAST_DAY('20230201');

-- MAKEDATE(연도,정수)
SELECT MAKEDATE(2024,32);

-- PEFIOD_ADD(연월, 개월 수)
SELECT period_add(202305,6); -- 2023년에서 5월달에서 6개월 지난 달

-- QUARTER(날짜) -- 해당 날짜의 분기
SELECT quarter(curdate());

-- TIME_TO_SEC(시간)
-- 입력한 시간을 초 단위로 구함
SELECT time_to_sec('1:1:1'); -- 1시간 1분 1초를 초단위로 바꿈

--
SELECT