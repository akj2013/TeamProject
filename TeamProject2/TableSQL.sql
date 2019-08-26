-- 회원가입
create table member (
   idx number not null unique,
   hifn varchar2(30), -- 히라가나 성
   hiln varchar2(30), -- 히라가나 이름
   hufn varchar2(30), -- 후리가나 성
   huln varchar2(30), -- 후리가나 이름
   email varchar2(50) not null CONSTRAINT PK_MEMBER PRIMARY KEY, -- 이메일 [아이디]
   postf varchar2(10), -- 우편번호 앞
   postb varchar2(10), -- 우편번호 뒤
   ken number(11), -- 현
   address1 varchar2(50), -- 시구
   address2 varchar2(20), -- 번지
   address3 varchar2(20), -- 건물명
   phonef varchar2(5), -- 전화번호
   phonem varchar2(5), -- 전화번호
   phoneb varchar2(5), -- 전화번호
   gender varchar2(5), -- 성별
   birthY number(11), -- 생일
   birthM number(11), -- 생일
   birthD number(11), -- 생일
   userpw varchar2(20), -- 패스워드
   dmagree integer -- 다이렉트 메세지 동의  
);

-- 경기
create table matches (
   mnum number not null primary key, --경기 번호
   hteam varchar2(20), -- 홈 팀
   ateam varchar2(20), -- 어웨이 팀
   hscore integer, -- 홈 팀 스코어
   ascore integer, -- 어웨이 팀 스코어
   hranking integer, -- 홈팀 피파 랭킹
   aranking integer, -- 어웨이팀 피파 랭킹
   hattackpoint integer, -- 홈팀 공격 포인트
   aattackpoint integer, -- 어웨이팀 공격 포인트
   hfoul integer, -- 홈팀 파울
   afoul integer, -- 어웨이팀 파울
   hdirector varchar2(20), -- 홈팀 감독
   adirector varchar2(20), -- 어웨이팀 감독
   hcaptain varchar2(20), -- 홈팀 캡틴
   acaptain varchar2(20), -- 어웨이팀 캡틴
   hrrecord varchar2(50), -- 홈팀 상대전적
   arrecord varchar2(50), -- 어웨이 상대전적
   hgmedal integer, -- 홈팀 금 은 동
   hsmedal integer,
   hbmedal integer,
   agmedal integer, -- 어웨이팀 금 은 동
   asmedal integer,
   abmedal integer
);

INSERT INTO matches values (1,'Brazil','Colombia',2,0,2,8,2,0,2,3,'Tite','Carlos Queiroz','Neymar da Silva','Radamel Falcao','3승 0무 2패','2승 0무 3패',1,0,0,0,0,0);
INSERT INTO matches values (2,'Honduras','Republic of korea',1,0,67,37,1,0,3,2,'Fabián Coito Machado','Paulo Bento','Maynor Figueroa','Son Heung Min','0승 0무 1패','1승 0무 0패',0,0,0,0,0,1);
INSERT INTO matches values (3,'Nigeria','Denmark',2,0,33,13,2,0,1,1,'Gernot Rohr','Åge Hareide','John Obi Mikel','Simon Kjær','0승 0무 1패','1승 0무 0패',1,0,0,0,3,0);
INSERT INTO matches values (4,'Germany','Portugal',4,0,15,6,4,0,4,3,'Joachim Löw','Fernando Santos','Manuel Neuer','Cristiano Ronaldo','1승 0무 0패','0승 0무 1패',0,1,2,0,0,0);
INSERT INTO matches values (5,'Brazil','Honduras',6,0,2,67,6,0,2,2,'Tite','Gernot Rohr','Neymar da Silva','Maynor Figueroa','1승 0무 0패','0승 0무 1패',1,0,0,0,0,0);
INSERT INTO matches values (6,'Germany','Nigeria',2,0,15,33,2,0,3,2,'Joachim Löw','Gernot Rohr','Manuel Neuer','John Obi Mikel','1승 0무 0패','0승 0무 1패',0,1,2,1,0,0);
INSERT INTO matches values (7,'Brazil','Germany',1,1,2,15,1,1,2,1,'Tite','Joachim Löw','Neymar da Silva','Manuel Neuer','1승 0무 1패','1승 0무 1패',1,0,0,0,1,2);
INSERT INTO matches values (8,'Nigeria','Honduras',3,2,33,67,3,2,5,3,'Gernot Rohr','Fabián Coito Machado','John Obi Mikel','Maynor Figueroa','0승 0무 0패','0승 0무 0패',1,0,0,0,0,0);


-- 나라
create table nation (
   nname varchar2(20) primary key, -- 나라 이름
   mcount integer, -- 경기 수
   wcount integer, -- 승리 수
   dcount integer, -- 무승부 수
   lcount integer -- 패배 수
);

insert into nation values('Brazil', 0, 0, 0, 0);
insert into nation values('Colombia', 0, 0, 0, 0);


-- 응원 코멘트
create table comments (
   idx number not null unique, -- 코멘트 인덱스
   emailc varchar2(20), -- 유저 아이디
   context varchar2(500), -- 내용
   timec DATE DEFAULT SYSDATE, -- 입력 시간
   mnumc varchar2(20), -- 경기 번호
   team varchar2(20)
);

-- 뉴스
create table news (
   idx number , -- 뉴스 인덱스
   context varchar2(4000), -- 본문
   timec DATE DEFAULT sysdate, -- 입력 시간
   url varchar2(2000), -- 사진 이름
   title varchar2(2000), -- 뉴스 제목
   subTitle varchar2(2000) -- 뉴스 부제목 
);
alter table news add constraint pk_news primary key(idx); // 기본키
alter table news add timen varchar2(100); // 마지막 수정 시간
-- 뉴스 끝!


create sequence member_seq_idx;
create sequence ticket_seq_mnumt;
create sequence comment_seq_idx;
create sequence news_seq_idx;



-- 이하 생략 ---------------------------------------------------------------------------------
select * from comments;
select count(*) from comments where mnumc='1' and team='Brazil';
