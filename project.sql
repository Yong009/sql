--------------------------------------------------------
--  ÆÄÀÏÀÌ »ý¼ºµÊ - ¼ö¿äÀÏ-2¿ù-22-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CAR
--------------------------------------------------------

  CREATE TABLE "CAR" ("CAR_NUMBER" NUMBER(4,0), "CAR_NAME" VARCHAR2(10), "CAR_KIND" VARCHAR2(10))
--------------------------------------------------------
--  DDL for Table CONDITION
--------------------------------------------------------

  CREATE TABLE "CONDITION" ("CAR_NUMBER" NUMBER(4,0), "CAR_YEAR" NUMBER(4,0), "CAR_COUNT" NUMBER(3,0), "CAR_OIL" NUMBER(5,0), "CAR_ENOIL" NUMBER(3,0), "CAR_TIRE" NUMBER(4,0))
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" ("MEMBER_ID" VARCHAR2(10), "MEMBER_PW" VARCHAR2(10), "MEMBER_NAME" VARCHAR2(15), "MEMBER_NUMBER" VARCHAR2(13))
REM INSERTING into CAR
SET DEFINE OFF;
Insert into CAR (CAR_NUMBER,CAR_NAME,CAR_KIND) values (1,'¾Æ¹Ý¶¼','½Â¿ëÂ÷');
Insert into CAR (CAR_NUMBER,CAR_NAME,CAR_KIND) values (2,'·¹ÀÌ','°æÂ÷');
Insert into CAR (CAR_NUMBER,CAR_NAME,CAR_KIND) values (3,'½î·»Åä','suv');
REM INSERTING into CONDITION
SET DEFINE OFF;
Insert into CONDITION (CAR_NUMBER,CAR_YEAR,CAR_COUNT,CAR_OIL,CAR_ENOIL,CAR_TIRE) values (1,2010,30,100,50,15);
Insert into CONDITION (CAR_NUMBER,CAR_YEAR,CAR_COUNT,CAR_OIL,CAR_ENOIL,CAR_TIRE) values (2,2018,40,80,50,15);
Insert into CONDITION (CAR_NUMBER,CAR_YEAR,CAR_COUNT,CAR_OIL,CAR_ENOIL,CAR_TIRE) values (3,2022,60,140,50,25);
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_NUMBER) values ('ge','ge','°ü¸®ÀÚ',null);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_NUMBER) values ('new1','new1','¹ÎÁö','010-1234-5678');
--------------------------------------------------------
--  DDL for Index SYS_C007188
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007188" ON "CAR" ("CAR_NUMBER")
--------------------------------------------------------
--  DDL for Index SYS_C007190
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007190" ON "CONDITION" ("CAR_NUMBER")
--------------------------------------------------------
--  DDL for Index SYS_C007194
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007194" ON "MEMBER" ("MEMBER_ID")
--------------------------------------------------------
--  DDL for Index SYS_C007188
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007188" ON "CAR" ("CAR_NUMBER")
--------------------------------------------------------
--  DDL for Index SYS_C007190
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007190" ON "CONDITION" ("CAR_NUMBER")
--------------------------------------------------------
--  DDL for Index SYS_C007194
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007194" ON "MEMBER" ("MEMBER_ID")
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "CAR" ADD PRIMARY KEY ("CAR_NUMBER") ENABLE
--------------------------------------------------------
--  Constraints for Table CONDITION
--------------------------------------------------------

  ALTER TABLE "CONDITION" ADD PRIMARY KEY ("CAR_NUMBER") ENABLE
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD PRIMARY KEY ("MEMBER_ID") ENABLE
  ALTER TABLE "MEMBER" MODIFY ("MEMBER_PW" NOT NULL ENABLE)
