--------------------------------------------------------
--  파일이 생성됨 - 화요일-7월-11-2023   
--------------------------------------------------------
DROP SEQUENCE "SCOTT"."BULLETIN_BOARD_SEQ";
DROP SEQUENCE "SCOTT"."COMMENTS_SEQ";
DROP SEQUENCE "SCOTT"."FESTIVAL_FORM_SEQ";
DROP SEQUENCE "SCOTT"."STAFF_RECRUITMENT_APPLY_SEQ";
--------------------------------------------------------
--  DDL for Sequence BULLETIN_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."BULLETIN_BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence COMMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."COMMENTS_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence FESTIVAL_FORM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."FESTIVAL_FORM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence STAFF_RECRUITMENT_APPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."STAFF_RECRUITMENT_APPLY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
