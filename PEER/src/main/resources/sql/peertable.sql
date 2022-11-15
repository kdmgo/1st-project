select * from user_info;
CREATE TABLE user_info (
	USER_NUM	NUMBER(20)	NOT NULL,
	USER_EMAIL	VARCHAR2(30)	NOT NULL,
	USER_PASS	VARCHAR2(30)	NOT NULL,
	USER_NAME	VARCHAR2(20)	NOT NULL,
	USER_GENDER	VARCHAR2(20)	NOT NULL,
	USER_AGE	NUMBER(2)	NOT NULL,
	USER_PHONE	VARCHAR2(20)	NOT NULL,
	USER_NICKNAME	VARCHAR2(30)	NOT NULL,
    USER_REGE   DATE    NOT NULL,
	USER_STATUS	VARCHAR2(20)	NOT NULL,
	USER_AUTHORITY	NUMBER(2)	DEFAULT 1    NOT NULL,
	USER_BIRTH DATE NOT NULL
	);

CREATE TABLE HOUSE (
   HOUSE_NUM NUMBER(20) NOT NULL,
   USER_NUM NUMBER(20)   NOT NULL,
   HOUSE_NAME VARCHAR2(20)   NOT NULL,
   HOUSE_ADDRESS VARCHAR2(100)   NOT NULL,
   HOUSE_X   NUMBER(9,6) NOT NULL,
   HOUSE_Y   NUMBER(9,6) NOT NULL,
   HOUSE_PHOTO   VARCHAR2(1000) NOT NULL,
   HOUSE_CAPACITY NUMBER(5) NOT NULL,
   HOUSE_FORM VARCHAR2(20) NOT NULL,
   HOUSE_DETAIL VARCHAR2(300) NOT NULL,
   HOUSE_DETAIL2 VARCHAR2(300),
   HOUSE_SHARE NUMBER(2) DEFAULT 1 NOT NULL,
   HOUSE_AUTHORITY   NUMBER(2)   DEFAULT 1  NOT NULL
);

CREATE TABLE HOUSE_PRICE (
   HOUSE_NUM   NUMBER(20) not null,
   DATERANGE varchar2(50) not null,
   HPRICE_BWEEK   NUMBER(20) not null,   
   HPRICE_BWEEKEND   NUMBER(20) not null,   
   HPRICE_SWEEK   NUMBER(20) not null,   
   HPRICE_SWEEKEND   NUMBER(20) not null
);

CREATE TABLE HOUSE_REVIEW (
	REVIEW_NUM	NUMBER(20)	NOT NULL,
	HOUSE_NUM	NUMBER(20)	NOT NULL,
	USER_NUM	NUMBER(20)	NOT NULL,
	STARS	NUMBER(2)	NOT NULL,
	REVIEW_CONTENT	VARCHAR2(1000)	NULL
);

CREATE TABLE MESSAGE (
	MESSAGE_NUM	NUMBER(20)	NOT NULL,
	MESSAGE_SENDER_NUM	NUMBER(20)	NOT NULL,
	MESSAGE_SENDER_NICK	VARCHAR2(30)	NOT NULL,
	MESSAGE_RECEIVER_NUM	NUMBER(20)	NOT NULL,
	MESSAGE_RECEIVER_NICK	VARCHAR2(30)	NOT NULL,
	MESSAGE_DATE	DATE	NOT NULL,
	MESSAGE_CONTENT	VARCHAR2(1000)	NOT NULL
);

CREATE TABLE WISHLIST (
	USER_NUM	NUMBER(20)	NOT NULL,
	HOUSE_NUM	NUMBER(20)	NOT NULL
);

CREATE TABLE BOARD_FREE (
	BOARD_NUM	NUMBER(20)	NOT NULL,
	BOARD_TITLE	VARCHAR2(100)	NOT NULL,
	BOARD_CONTENT	VARCHAR2(4000)	NOT NULL,
	BOARD_PHOTO	VARCHAR2(4000)	NULL,
	BOARD_DATE	DATE	NOT NULL,
	BOARD_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_READCOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_AUTHORITY	NUMBER(2)	DEFAULT 1 NOT NULL
	USER_NUM	NUMBER(20) NOT NULL,
	USER_NICKNAME VARCHAR2(30) NOT NULL
	);


CREATE TABLE BOARD_TRANSPORT (
	BOARD_NUM	NUMBER(20)	NOT NULL,
	BOARD_TITLE	VARCHAR2(100)	NOT NULL,
	BOARD_CONTENT	VARCHAR2(4000)	NOT NULL,
	BOARD_PHOTO	VARCHAR2(4000)	NULL,
	BOARD_DATE	DATE	NOT NULL,
	BOARD_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_READCOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_AUTHORITY	NUMBER(2)	DEFAULT 1 NOT NULL
	USER_NUM	NUMBER(20) NOT NULL,
	USER_NICKNAME VARCHAR2(30) NOT NULL
);


CREATE TABLE BOARD_FOOD (
	BOARD_NUM	NUMBER(20)	NOT NULL,
	BOARD_TITLE	VARCHAR2(100)	NOT NULL,
	BOARD_CONTENT	VARCHAR2(4000)	NOT NULL,
	BOARD_PHOTO	VARCHAR2(4000)	NULL,
	BOARD_DATE	DATE	NOT NULL,
	BOARD_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_READCOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_AUTHORITY	NUMBER(2)	DEFAULT 1 NOT NULL
	USER_NUM	NUMBER(20) NOT NULL,
	USER_NICKNAME VARCHAR2(30) NOT NULL
);

CREATE TABLE BOARD_ACTIVITY (
	BOARD_NUM	NUMBER(20)	NOT NULL,
	BOARD_TITLE	VARCHAR2(100)	NOT NULL,
	BOARD_CONTENT	VARCHAR2(4000)	NOT NULL,
	BOARD_PHOTO	VARCHAR2(4000)	NULL,
	BOARD_DATE	DATE	NOT NULL,
	BOARD_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_READCOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_AUTHORITY	NUMBER(2)	DEFAULT 1 NOT NULL
	USER_NUM	NUMBER(20) NOT NULL,
	USER_NICKNAME VARCHAR2(30) NOT NULL
);

CREATE TABLE BOARD_SIGHTSEEING (
	BOARD_NUM	NUMBER(20)	NOT NULL,
	BOARD_TITLE	VARCHAR2(100)	NOT NULL,
	BOARD_CONTENT	VARCHAR2(4000)	NOT NULL,
	BOARD_PHOTO	VARCHAR2(4000)	NULL,
	BOARD_DATE	DATE	NOT NULL,
	BOARD_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_READCOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_AUTHORITY	NUMBER(2)	DEFAULT 1 NOT NULL
	USER_NUM	NUMBER(20) NOT NULL,
	USER_NICKNAME VARCHAR2(30) NOT NULL
);

CREATE TABLE BOARD_HOUSE (
	BOARD_NUM	NUMBER(20)	NOT NULL,
	BOARD_TITLE	VARCHAR2(100)	NOT NULL,
	BOARD_CONTENT	VARCHAR2(4000)	NOT NULL,
	BOARD_PHOTO	VARCHAR2(4000)	NULL,
	BOARD_DATE	DATE	NOT NULL,
	BOARD_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_READCOUNT	NUMBER(5)	DEFAULT 0 NOT NULL,
	BOARD_AUTHORITY	NUMBER(2)	DEFAULT 1 NOT NULL
	USER_NUM	NUMBER(20) NOT NULL,
	USER_NICKNAME VARCHAR2(30) NOT NULL
);




CREATE TABLE BOOKING (
	BOOK_NUM	NUMBER(20)	NOT NULL,
	USER_NUM	NUMBER(20)	NOT NULL,
	HOUSE_NUM	NUMBER(20)	NOT NULL,
	CHECKIN	DATE	NOT NULL,
	CHECKOUT	DATE	NOT NULL,
	REQUEST	VARCHAR2(100)	NULL
);

CREATE TABLE SHARE_BOOKING (
	BOOK_NUM	NUMBER(20)	NOT NULL,
	HOUSE_NUM	NUMBER(20)	NOT NULL,
	CHECKIN	DATE	NOT NULL,
	CHECKOUT	DATE	NOT NULL,
	USER_NUM_1	NUMBER(20)	NULL,
	USER_NUM_2	NUMBER(20)	NULL,
	SHARE_CHECK	NUMBER(2)	DEFAULT 1 NOT NULL	
);

ALTER TABLE user_info ADD CONSTRAINT PK_USER_INFO PRIMARY KEY (
	USER_NUM
);

ALTER TABLE HOUSE ADD CONSTRAINT PK_HOUSE PRIMARY KEY (
	HOUSE_NUM,
);

ALTER TABLE HOUSE_PRICE ADD CONSTRAINT PK_HOUSE_PRICE PRIMARY KEY (
	HOUSE_NUM
);

ALTER TABLE HOUSE_REVIEW ADD CONSTRAINT PK_HOUSE_REVIEW PRIMARY KEY (
	REVIEW_NUM,
);

ALTER TABLE MESSAGE ADD CONSTRAINT PK_MESSAGE PRIMARY KEY (
	MESSAGE_NUM
);

ALTER TABLE BOARD_FREE ADD CONSTRAINT PK_BOARD_FREE PRIMARY KEY (
	BOARD_NUM
);

ALTER TABLE BOARD_FREE_REPLY ADD CONSTRAINT PK_BOARD_FREE_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE BOARD_TRANSPORT ADD CONSTRAINT PK_BOARD_TRANSPORT PRIMARY KEY (
	BOARD_NUM
);

ALTER TABLE BOARD_TRANSPORT_REPLY ADD CONSTRAINT PK_BOARD_TRANSPORT_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE BOARD_FOOD ADD CONSTRAINT PK_BOARD_FOOD PRIMARY KEY (
	BOARD_NUM
);

ALTER TABLE BOARD_ACTIVITY ADD CONSTRAINT PK_BOARD_ACTIVITY PRIMARY KEY (
	BOARD_NUM
);

ALTER TABLE BOARD_SIGHTSEEING ADD CONSTRAINT PK_BOARD_SIGHTSEEING PRIMARY KEY (
	BOARD_NUM
);

ALTER TABLE BOARD_HOUSE ADD CONSTRAINT PK_BOARD_HOUSE PRIMARY KEY (
	BOARD_NUM
);

ALTER TABLE BOARD_FOOD_REPLY ADD CONSTRAINT PK_BOARD_FOOD_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE BOARD_ACTIVITY_REPLY ADD CONSTRAINT PK_BOARD_ACTIVITY_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE BOARD_SIGHTSEEING_REPLY ADD CONSTRAINT PK_BOARD_SIGHTSEEING_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE BOARD_HOUSE_REPLY ADD CONSTRAINT PK_BOARD_HOUSE_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE BOOKING ADD CONSTRAINT PK_BOOKING PRIMARY KEY (
	BOOK_NUM,
);

ALTER TABLE SHARE_BOOKING ADD CONSTRAINT PK_SHARE_BOOKING PRIMARY KEY (
	BOOK_NUM,
);


CREATE TABLE BOARD_FREE_REPLY (
	REPLY_NUM	NUMBER(20)	NOT NULL,
            BOARD_NUM	NUMBER(20)	NOT NULL,
	USER_NUM	NUMBER(20)	NOT NULL,
	REPLY_DATE	DATE	NOT NULL,
	REPLY_STEP	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_LEV	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_CONTENT	VARCHAR2(500)	NOT NULL,
	REPLY_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL);
CREATE TABLE BOARD_TRANSPORT_REPLY (
	REPLY_NUM	NUMBER(20)	NOT NULL,
            BOARD_NUM	NUMBER(20)	NOT NULL,
	USER_NUM	NUMBER(20)	NOT NULL,
	REPLY_DATE	DATE	NOT NULL,
	REPLY_STEP	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_LEV	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_CONTENT	VARCHAR2(500)	NOT NULL,
	REPLY_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL);

CREATE TABLE BOARD_SIGHTSEEING_REPLY (
	REPLY_NUM	NUMBER(20)	NOT NULL,
            BOARD_NUM	NUMBER(20)	NOT NULL,
	USER_NUM	NUMBER(20)	NOT NULL,
	REPLY_DATE	DATE	NOT NULL,
	REPLY_STEP	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_LEV	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_CONTENT	VARCHAR2(500)	NOT NULL,
	REPLY_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL);

CREATE TABLE BOARD_FOOD_REPLY (
	REPLY_NUM	NUMBER(20)	NOT NULL,
            BOARD_NUM	NUMBER(20)	NOT NULL,
	USER_NUM	NUMBER(20)	NOT NULL,
	REPLY_DATE	DATE	NOT NULL,
	REPLY_STEP	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_LEV	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_CONTENT	VARCHAR2(500)	NOT NULL,
	REPLY_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL);

CREATE TABLE BOARD_ACTIVITY_REPLY (
	REPLY_NUM	NUMBER(20)	NOT NULL,
            BOARD_NUM	NUMBER(20)	NOT NULL,
	USER_NUM	NUMBER(20)	NOT NULL,
	REPLY_DATE	DATE	NOT NULL,
	REPLY_STEP	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_LEV	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_CONTENT	VARCHAR2(500)	NOT NULL,
	REPLY_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL);

CREATE TABLE BOARD_HOUSE_REPLY (
	REPLY_NUM	NUMBER(20)	NOT NULL,
            BOARD_NUM	NUMBER(20)	NOT NULL,
	USER_NUM	NUMBER(20)	NOT NULL,
	REPLY_DATE	DATE	NOT NULL,
	REPLY_STEP	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_LEV	NUMBER(3)	DEFAULT 0 NOT NULL,
	REPLY_CONTENT	VARCHAR2(500)	NOT NULL,
	REPLY_LIKECOUNT	NUMBER(5)	DEFAULT 0 NOT NULL);

ALTER TABLE BOARD_FREE_REPLY ADD CONSTRAINT PK_BOARD_FREE_REPLY PRIMARY KEY (
	REPLY_NUM
);
ALTER TABLE BOARD_TRANSPORT_REPLY ADD CONSTRAINT PK_BOARD_TRANSPORT_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE BOARD_FOOD_REPLY ADD CONSTRAINT PK_BOARD_FOOD_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE BOARD_ACTIVITY_REPLY ADD CONSTRAINT PK_BOARD_ACTIVITY_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE BOARD_SIGHTSEEING_REPLY ADD CONSTRAINT PK_BOARD_SIGHTSEEING_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE BOARD_HOUSE_REPLY ADD CONSTRAINT PK_BOARD_HOUSE_REPLY PRIMARY KEY (
	REPLY_NUM
);

ALTER TABLE USER_INFO ADD UNIQUE(USER_EMAIL);
ALTER TABLE USER_INFO ADD UNIQUE(USER_NICKNAME);
ALTER TABLE USER_INFO ADD UNIQUE(USER_PHONE);

--SEQUENCE
create sequence user_seq
increment by 1
start with 1;

create sequence house_seq
increment by 1
start with 1;

create sequence review_seq
increment by 1
start with 1;

create sequence message_seq
increment by 1
start with 1;

create sequence booking_seq
increment by 1
start with 1000000000;

create sequence share_booking_seq
increment by 1
start with 2000000000;

create sequence board_free_seq
increment by 1
start with 1;

create sequence board_transport_seq
increment by 1
start with 1;

create sequence board_food_seq
increment by 1
start with 1;

create sequence board_activity_seq
increment by 1
start with 1;

create sequence board_sightseeing_seq
increment by 1
start with 1;

create sequence board_house_seq
increment by 1
start with 1;


create sequence board_free_reply_seq
increment by 1
start with 1;

create sequence board_transport_reply_seq
increment by 1
start with 1;

create sequence board_food_reply_seq
increment by 1
start with 1;

create sequence board_activity_reply_seq
increment by 1
start with 1;

create sequence board_sightseeing_reply_seq
increment by 1
start with 1;

create sequence board_house_reply_seq
increment by 1
start with 1;