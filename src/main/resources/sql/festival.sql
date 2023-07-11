--------------------------------------------------------
--  파일이 생성됨 - 화요일-7월-11-2023   
--------------------------------------------------------
DROP TABLE "SCOTT"."BULLETIN_BOARD";
DROP TABLE "SCOTT"."COMMENTS";
DROP TABLE "SCOTT"."COMMON_CODE";
DROP TABLE "SCOTT"."F_USER";
DROP TABLE "SCOTT"."FESTIVAL_FORM";
DROP TABLE "SCOTT"."FESTIVAL_INFO";
DROP TABLE "SCOTT"."STAFF_RECRUITMENT";
DROP TABLE "SCOTT"."STAFF_RECRUITMENT_APPLY";
--------------------------------------------------------
--  DDL for Table BULLETIN_BOARD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."BULLETIN_BOARD" 
   (	"BNO" NUMBER, 
	"TITLE" VARCHAR2(100 BYTE), 
	"TYPE_OF_INQUIRY" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"WRITER" VARCHAR2(100 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."COMMENTS" 
   (	"BNO" NUMBER, 
	"CNO" NUMBER, 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"WRITER" VARCHAR2(50 BYTE), 
	"REGDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table COMMON_CODE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."COMMON_CODE" 
   (	"CODE_TYPE" VARCHAR2(100 BYTE), 
	"CODE_NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table F_USER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."F_USER" 
   (	"LOGIN_ID" VARCHAR2(200 BYTE), 
	"LOGIN_PW" VARCHAR2(200 BYTE), 
	"NAME" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"TEL_NUMBER" VARCHAR2(150 BYTE), 
	"BIRTH" VARCHAR2(150 BYTE), 
	"AUTHORITY" VARCHAR2(20 BYTE) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table FESTIVAL_FORM
--------------------------------------------------------

  CREATE TABLE "SCOTT"."FESTIVAL_FORM" 
   (	"FNO" NUMBER, 
	"WRITER" VARCHAR2(50 BYTE), 
	"FESTIVAL_NAME" VARCHAR2(200 BYTE), 
	"PLACE" VARCHAR2(100 BYTE), 
	"ADDRESS_EVENT" VARCHAR2(200 BYTE), 
	"NUMBER_OF_PEOPLE" VARCHAR2(100 BYTE), 
	"CARRYING_DIFFICULTY" VARCHAR2(200 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"BUDGET_RANGE" VARCHAR2(100 BYTE), 
	"COMMISSIONING_AGENCY" VARCHAR2(100 BYTE), 
	"NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table FESTIVAL_INFO
--------------------------------------------------------

  CREATE TABLE "SCOTT"."FESTIVAL_INFO" 
   (	"FT_CODE" NUMBER(4,0), 
	"FSTVL_NM" VARCHAR2(200 BYTE), 
	"OPAR" VARCHAR2(200 BYTE), 
	"FSTVL_START_DATE" VARCHAR2(20 BYTE), 
	"FSTVL_END_DATE" VARCHAR2(20 BYTE), 
	"FSTVL_CO" VARCHAR2(2000 BYTE), 
	"MNNST" VARCHAR2(200 BYTE), 
	"AUSPC_INSTT" VARCHAR2(400 BYTE), 
	"SUPRT_INSTT" VARCHAR2(400 BYTE), 
	"PHONE_NUMBER" VARCHAR2(13 BYTE), 
	"HOMEPAGE_URL" VARCHAR2(300 BYTE), 
	"RELATE_INFO" VARCHAR2(200 BYTE), 
	"RDNMADR" VARCHAR2(200 BYTE), 
	"LNMADR" VARCHAR2(200 BYTE), 
	"LATITUDE" VARCHAR2(200 BYTE), 
	"LONGITUDE" VARCHAR2(200 BYTE), 
	"REFERENCE_DATE" VARCHAR2(200 BYTE), 
	"INSTT_CODE" VARCHAR2(200 BYTE), 
	"IMG_HREF" VARCHAR2(400 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table STAFF_RECRUITMENT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."STAFF_RECRUITMENT" 
   (	"SRNO" NUMBER, 
	"RECRUITMENT_TO" NUMBER, 
	"RECRUITMENT_FIELD" VARCHAR2(100 BYTE), 
	"PREFERENTIAL_TREATMENT" VARCHAR2(100 BYTE), 
	"APPLICATION_PERIOD" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table STAFF_RECRUITMENT_APPLY
--------------------------------------------------------

  CREATE TABLE "SCOTT"."STAFF_RECRUITMENT_APPLY" 
   (	"SRNO" NUMBER, 
	"SRANO" NUMBER, 
	"SUPPORT_PERIOD_START" VARCHAR2(100 BYTE), 
	"SUPPORT_PERIOD_END" VARCHAR2(100 BYTE), 
	"RECRUITMENT_FIELD" VARCHAR2(100 BYTE), 
	"ID" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
REM INSERTING into SCOTT.BULLETIN_BOARD
SET DEFINE OFF;
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (2,'배치도 문의','배치도 문의','배치도 컨셉 잡아주세요!','test12345',to_date('23/07/10','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (3,'test1234','축제 문의','test1324','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (4,'안녕하세요','축제 문의','축제 문의 드립니다.','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (5,'홍보 문의','홍보 문의','홍보문의 부탁드립니다.','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (6,'가격 문의','가격 문의','가격이 얼마인가요?','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (7,'배치도 문의','배치도 문의','배치도 좀 잘 그려주세요.','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (8,'반갑습니다','그 외','안녕히 계세요','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (9,'천안 흥타령 축제','축제 문의','언제가 좋을까요?','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (10,'너무 비싸요','가격 문의','너무 비싼데 비용 좀 싸게 해주세요...','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (11,'배치도','배치도 문의','배치도 어떻게 보나요?','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (12,'홍보 이벤트','홍보 문의','홍보 이벤트는 따로 없나요?','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (13,'축제 문의','축제 문의','불꽃놀이 가능한가요?','test1234',to_date('23/07/11','RR/MM/DD'));
Insert into SCOTT.BULLETIN_BOARD (BNO,TITLE,TYPE_OF_INQUIRY,CONTENT,WRITER,REGDATE) values (14,'배치도','배치도 문의','배치도 못생겼어요','test1234',to_date('23/07/11','RR/MM/DD'));
REM INSERTING into SCOTT.COMMENTS
SET DEFINE OFF;
REM INSERTING into SCOTT.COMMON_CODE
SET DEFINE OFF;
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('level1','실외 행사장 / 차량이 행사 현장까지 진입 가능');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('level2','실외 행사장 / 차량이 행사 현장까지 진입 불가능');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('level3','실내 행사장 / 1층이라 엘레베이터 필요 없음');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('level4','실내 행사장 / 지하 또는 지상층이지만 엘레베이터 있음');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('level5','실내 행사장 / 지하 또는 지상층이지만 엘레베이터 없음');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('budgetRange 100','100만원 이하');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('budgetRange 100~200','100만원 ~ 200만원');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('budgetRange 200~300','200만원 ~ 300만원');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('budgetRange 300~400','300만원 ~ 400만원');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('budgetRange 400~500','400만원 ~ 500만원');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('budgetRange 500~600','500만원 ~ 600만원');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('budgetRange 600~1000','600만원 ~ 1000만원');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('budgetRange 1000~3000','1000만원 ~ 3000만원');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('budgetRange 3000~','3000만원 이상');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('NumberOfPeople 50','50명 이내');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('NumberOfPeople 51~100','51~100명');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('NumberOfPeople 101~200','101명~200명');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('NumberOfPeople 201~300','201명 ~ 400명');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('NumberOfPeople 301~400','400명 이상');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('inside','실내');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('outdoors','실외');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('inAndOut','실내 + 실외');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('rf0','기타');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('rf1','안내도우미');
Insert into SCOTT.COMMON_CODE (CODE_TYPE,CODE_NAME) values ('rf2','안전요원');
REM INSERTING into SCOTT.F_USER
SET DEFINE OFF;
Insert into SCOTT.F_USER (LOGIN_ID,LOGIN_PW,NAME,EMAIL,TEL_NUMBER,BIRTH,AUTHORITY) values ('admin','admin','관리자','pinata2023@gmail.com','010-2023-0704','2023-07-04','0');
Insert into SCOTT.F_USER (LOGIN_ID,LOGIN_PW,NAME,EMAIL,TEL_NUMBER,BIRTH,AUTHORITY) values ('test1234','test1234!','일반인','test1234@gmail.com','010-8989-1234','1998-04-19','1');
REM INSERTING into SCOTT.FESTIVAL_FORM
SET DEFINE OFF;
Insert into SCOTT.FESTIVAL_FORM (FNO,WRITER,FESTIVAL_NAME,PLACE,ADDRESS_EVENT,NUMBER_OF_PEOPLE,CARRYING_DIFFICULTY,START_DATE,END_DATE,BUDGET_RANGE,COMMISSIONING_AGENCY,NAME) values (1,'test1234','휴먼교육축제','inside','천안 대흥로','NumberOfPeople 51~100','level2',to_date('23/07/19','RR/MM/DD'),to_date('23/07/31','RR/MM/DD'),'budgetRange 400~500','휴먼교육센터','흥타령');
REM INSERTING into SCOTT.FESTIVAL_INFO
SET DEFINE OFF;
REM INSERTING into SCOTT.STAFF_RECRUITMENT
SET DEFINE OFF;
REM INSERTING into SCOTT.STAFF_RECRUITMENT_APPLY
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C007910
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007910" ON "SCOTT"."BULLETIN_BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index SYS_C007915
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007915" ON "SCOTT"."COMMENTS" ("BNO", "CNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index COMMON_CODE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."COMMON_CODE_PK" ON "SCOTT"."COMMON_CODE" ("CODE_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index F_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."F_USER_PK" ON "SCOTT"."F_USER" ("LOGIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index FESTIVAL_FORM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."FESTIVAL_FORM_PK" ON "SCOTT"."FESTIVAL_FORM" ("FNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index SYS_C007922
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007922" ON "SCOTT"."STAFF_RECRUITMENT" ("SRNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index STAFF_RECRUITMENT_APPLY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."STAFF_RECRUITMENT_APPLY_PK" ON "SCOTT"."STAFF_RECRUITMENT_APPLY" ("SRNO", "SRANO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  Constraints for Table BULLETIN_BOARD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."BULLETIN_BOARD" MODIFY ("BNO" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BULLETIN_BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BULLETIN_BOARD" MODIFY ("TYPE_OF_INQUIRY" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BULLETIN_BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BULLETIN_BOARD" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BULLETIN_BOARD" ADD PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."COMMENTS" MODIFY ("BNO" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."COMMENTS" MODIFY ("CNO" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."COMMENTS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."COMMENTS" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."COMMENTS" ADD PRIMARY KEY ("BNO", "CNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "EXAMPLE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMON_CODE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."COMMON_CODE" MODIFY ("CODE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."COMMON_CODE" MODIFY ("CODE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."COMMON_CODE" ADD CONSTRAINT "COMMON_CODE_PK" PRIMARY KEY ("CODE_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table F_USER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."F_USER" MODIFY ("LOGIN_ID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("LOGIN_PW" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("TEL_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("AUTHORITY" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" ADD CONSTRAINT "F_USER_PK" PRIMARY KEY ("LOGIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FESTIVAL_FORM
--------------------------------------------------------

  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("FNO" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("FESTIVAL_NAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("PLACE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("ADDRESS_EVENT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("NUMBER_OF_PEOPLE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("CARRYING_DIFFICULTY" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("START_DATE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("END_DATE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("BUDGET_RANGE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("COMMISSIONING_AGENCY" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FESTIVAL_FORM" ADD CONSTRAINT "FESTIVAL_FORM_PK" PRIMARY KEY ("FNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STAFF_RECRUITMENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."STAFF_RECRUITMENT" MODIFY ("RECRUITMENT_TO" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."STAFF_RECRUITMENT" MODIFY ("RECRUITMENT_FIELD" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."STAFF_RECRUITMENT" MODIFY ("APPLICATION_PERIOD" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."STAFF_RECRUITMENT" ADD PRIMARY KEY ("SRNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "EXAMPLE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STAFF_RECRUITMENT_APPLY
--------------------------------------------------------

  ALTER TABLE "SCOTT"."STAFF_RECRUITMENT_APPLY" MODIFY ("SUPPORT_PERIOD_START" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."STAFF_RECRUITMENT_APPLY" MODIFY ("SUPPORT_PERIOD_END" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."STAFF_RECRUITMENT_APPLY" MODIFY ("RECRUITMENT_FIELD" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."STAFF_RECRUITMENT_APPLY" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."STAFF_RECRUITMENT_APPLY" ADD CONSTRAINT "STAFF_RECRUITMENT_APPLY_PK" PRIMARY KEY ("SRNO", "SRANO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "EXAMPLE"  ENABLE;
