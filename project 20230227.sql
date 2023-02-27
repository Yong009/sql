--------------------------------------------------------
--  ������ ������ - ������-2��-27-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CAR
--------------------------------------------------------

  CREATE TABLE "GE"."CAR" 
   (	"CAR_NUMBER" NUMBER(4,0), 
	"CAR_NAME" VARCHAR2(20 BYTE), 
	"CAR_KIND" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CONDITION
--------------------------------------------------------

  CREATE TABLE "GE"."CONDITION" 
   (	"CAR_NUMBER" NUMBER(4,0), 
	"CAR_YEAR" NUMBER(4,0), 
	"CAR_COUNT" NUMBER(3,0), 
	"CAR_OIL" NUMBER(5,0), 
	"CAR_ENOIL" NUMBER(3,0), 
	"CAR_TIRE" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table INCOME
--------------------------------------------------------

  CREATE TABLE "GE"."INCOME" 
   (	"INCOME_DATE" VARCHAR2(10 BYTE), 
	"INCOME_INCOME" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table INSURANCE
--------------------------------------------------------

  CREATE TABLE "GE"."INSURANCE" 
   (	"IN_INSURANCE" VARCHAR2(10 BYTE) DEFAULT 'NO', 
	"CAR_NUMBER" NUMBER(3,0), 
	"IN_PRICE" NUMBER(6,0), 
	"MEMBER_ID" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "GE"."MEMBER" 
   (	"MEMBER_ID" VARCHAR2(10 BYTE), 
	"MEMBER_PW" VARCHAR2(10 BYTE), 
	"MEMBER_NAME" VARCHAR2(15 BYTE), 
	"MEMBER_NUMBER" VARCHAR2(13 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRICE
--------------------------------------------------------

  CREATE TABLE "GE"."PRICE" 
   (	"CAR_NUMBER" NUMBER(3,0), 
	"PRICE_PRICE" NUMBER(6,0), 
	"PRICE_PRICEOIL" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RENT
--------------------------------------------------------

  CREATE TABLE "GE"."RENT" 
   (	"RENT_ID" NUMBER(3,0), 
	"CAR_NUMBER" NUMBER(4,0), 
	"RENT_DATE" VARCHAR2(10 BYTE), 
	"RENT_DISTANCE" NUMBER(3,0), 
	"RENT_RESERVED" CHAR(1 BYTE), 
	"MEMBER_ID" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into GE.CAR
SET DEFINE OFF;
Insert into GE.CAR (CAR_NUMBER,CAR_NAME,CAR_KIND) values (1,'�ƹݶ�','�¿���');
Insert into GE.CAR (CAR_NUMBER,CAR_NAME,CAR_KIND) values (2,'����','����');
Insert into GE.CAR (CAR_NUMBER,CAR_NAME,CAR_KIND) values (3,'���','suv');
Insert into GE.CAR (CAR_NUMBER,CAR_NAME,CAR_KIND) values (4,'���ʽý�','�¿���');
Insert into GE.CAR (CAR_NUMBER,CAR_NAME,CAR_KIND) values (5,'����Ƽ��','suv');
Insert into GE.CAR (CAR_NUMBER,CAR_NAME,CAR_KIND) values (6,'��Ƽ��','����');
REM INSERTING into GE.CONDITION
SET DEFINE OFF;
Insert into GE.CONDITION (CAR_NUMBER,CAR_YEAR,CAR_COUNT,CAR_OIL,CAR_ENOIL,CAR_TIRE) values (1,2010,30,100,50,15);
Insert into GE.CONDITION (CAR_NUMBER,CAR_YEAR,CAR_COUNT,CAR_OIL,CAR_ENOIL,CAR_TIRE) values (2,2018,40,80,50,15);
Insert into GE.CONDITION (CAR_NUMBER,CAR_YEAR,CAR_COUNT,CAR_OIL,CAR_ENOIL,CAR_TIRE) values (3,2022,60,140,50,25);
Insert into GE.CONDITION (CAR_NUMBER,CAR_YEAR,CAR_COUNT,CAR_OIL,CAR_ENOIL,CAR_TIRE) values (4,2020,50,150,70,30);
Insert into GE.CONDITION (CAR_NUMBER,CAR_YEAR,CAR_COUNT,CAR_OIL,CAR_ENOIL,CAR_TIRE) values (5,2014,80,100,60,20);
Insert into GE.CONDITION (CAR_NUMBER,CAR_YEAR,CAR_COUNT,CAR_OIL,CAR_ENOIL,CAR_TIRE) values (6,2017,60,70,40,20);
REM INSERTING into GE.INCOME
SET DEFINE OFF;
Insert into GE.INCOME (INCOME_DATE,INCOME_INCOME) values ('23/02/27',35000);
Insert into GE.INCOME (INCOME_DATE,INCOME_INCOME) values ('23/02/27',35000);
REM INSERTING into GE.INSURANCE
SET DEFINE OFF;
Insert into GE.INSURANCE (IN_INSURANCE,CAR_NUMBER,IN_PRICE,MEMBER_ID) values ('n',1,10000,null);
Insert into GE.INSURANCE (IN_INSURANCE,CAR_NUMBER,IN_PRICE,MEMBER_ID) values ('n',2,10000,null);
Insert into GE.INSURANCE (IN_INSURANCE,CAR_NUMBER,IN_PRICE,MEMBER_ID) values ('n',3,10000,null);
Insert into GE.INSURANCE (IN_INSURANCE,CAR_NUMBER,IN_PRICE,MEMBER_ID) values ('n',4,10000,null);
Insert into GE.INSURANCE (IN_INSURANCE,CAR_NUMBER,IN_PRICE,MEMBER_ID) values ('n',5,10000,null);
Insert into GE.INSURANCE (IN_INSURANCE,CAR_NUMBER,IN_PRICE,MEMBER_ID) values ('n',6,10000,null);
REM INSERTING into GE.MEMBER
SET DEFINE OFF;
Insert into GE.MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_NUMBER) values ('ge','ge','������',null);
Insert into GE.MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_NUMBER) values ('new1','new1','����','010-1234-5678');
REM INSERTING into GE.PRICE
SET DEFINE OFF;
Insert into GE.PRICE (CAR_NUMBER,PRICE_PRICE,PRICE_PRICEOIL) values (1,20000,null);
Insert into GE.PRICE (CAR_NUMBER,PRICE_PRICE,PRICE_PRICEOIL) values (2,10000,null);
Insert into GE.PRICE (CAR_NUMBER,PRICE_PRICE,PRICE_PRICEOIL) values (3,30000,null);
Insert into GE.PRICE (CAR_NUMBER,PRICE_PRICE,PRICE_PRICEOIL) values (4,35000,null);
Insert into GE.PRICE (CAR_NUMBER,PRICE_PRICE,PRICE_PRICEOIL) values (5,25000,null);
Insert into GE.PRICE (CAR_NUMBER,PRICE_PRICE,PRICE_PRICEOIL) values (6,8000,null);
REM INSERTING into GE.RENT
SET DEFINE OFF;
Insert into GE.RENT (RENT_ID,CAR_NUMBER,RENT_DATE,RENT_DISTANCE,RENT_RESERVED,MEMBER_ID) values (null,1,null,null,null,null);
Insert into GE.RENT (RENT_ID,CAR_NUMBER,RENT_DATE,RENT_DISTANCE,RENT_RESERVED,MEMBER_ID) values (null,2,null,null,null,null);
Insert into GE.RENT (RENT_ID,CAR_NUMBER,RENT_DATE,RENT_DISTANCE,RENT_RESERVED,MEMBER_ID) values (null,3,null,null,null,null);
Insert into GE.RENT (RENT_ID,CAR_NUMBER,RENT_DATE,RENT_DISTANCE,RENT_RESERVED,MEMBER_ID) values (null,4,null,null,null,null);
Insert into GE.RENT (RENT_ID,CAR_NUMBER,RENT_DATE,RENT_DISTANCE,RENT_RESERVED,MEMBER_ID) values (null,5,null,null,null,null);
Insert into GE.RENT (RENT_ID,CAR_NUMBER,RENT_DATE,RENT_DISTANCE,RENT_RESERVED,MEMBER_ID) values (null,6,null,null,null,null);
--------------------------------------------------------
--  DDL for Index SYS_C007216
--------------------------------------------------------

  CREATE UNIQUE INDEX "GE"."SYS_C007216" ON "GE"."MEMBER" ("MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007218
--------------------------------------------------------

  CREATE UNIQUE INDEX "GE"."SYS_C007218" ON "GE"."CAR" ("CAR_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007218
--------------------------------------------------------

  CREATE UNIQUE INDEX "GE"."SYS_C007218" ON "GE"."CAR" ("CAR_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007216
--------------------------------------------------------

  CREATE UNIQUE INDEX "GE"."SYS_C007216" ON "GE"."MEMBER" ("MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "GE"."CAR" ADD PRIMARY KEY ("CAR_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "GE"."CAR" MODIFY ("CAR_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "GE"."MEMBER" ADD PRIMARY KEY ("MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CONDITION
--------------------------------------------------------

  ALTER TABLE "GE"."CONDITION" ADD FOREIGN KEY ("CAR_NUMBER")
	  REFERENCES "GE"."CAR" ("CAR_NUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INSURANCE
--------------------------------------------------------

  ALTER TABLE "GE"."INSURANCE" ADD FOREIGN KEY ("CAR_NUMBER")
	  REFERENCES "GE"."CAR" ("CAR_NUMBER") ENABLE;
  ALTER TABLE "GE"."INSURANCE" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "GE"."MEMBER" ("MEMBER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RENT
--------------------------------------------------------

  ALTER TABLE "GE"."RENT" ADD FOREIGN KEY ("CAR_NUMBER")
	  REFERENCES "GE"."CAR" ("CAR_NUMBER") ENABLE;
  ALTER TABLE "GE"."RENT" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "GE"."MEMBER" ("MEMBER_ID") ENABLE;
