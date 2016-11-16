-- Group [Group]
create table "APP"."GROUP" (
   "OID"  integer  not null,
   "GROUP_NAME"  varchar(255),
  primary key ("OID")
);


-- Module [Module]
create table "APP"."MODULE" (
   "OID"  integer  not null,
   "MODULE_ID"  varchar(255),
   "MODULE_NAME"  varchar(255),
  primary key ("OID")
);


-- User [User]
create table "APP"."USER" (
   "OID"  integer  not null,
   "EMAIL"  varchar(255),
   "PASSWORD"  varchar(255),
   "FIRST_NAME"  varchar(255),
   "LAST_NAME"  varchar(255),
   "GENDER"  varchar(255),
   "BIRTH_DATE"  date,
   "SHIPPING_ADDRESS"  varchar(255),
   "USERNAME"  varchar(255),
  primary key ("OID")
);


-- Category [pkg1#ent1]
create table "APP"."CATEGORY" (
   "OID"  integer  not null,
   "CATEGORY"  varchar(255),
  primary key ("OID")
);


-- Bookinfo [pkg1#ent8]
create table "APP"."BOOKINFO" (
   "OID"  integer  not null,
   "ISBN"  integer,
   "DESCRIPTION"  clob(10000),
   "NAME"  varchar(255),
   "PRICE"  FLOAT,
   "PHOTO"  varchar(255),
   "CATEGORY"  varchar(255),
   "LOGINPRICE"  FLOAT,
   "PUBLISHER"  varchar(255),
   "AUTHOR"  varchar(255),
   "ISSALE"  BOOLEAN,
   "ISRENT"  BOOLEAN,
  primary key ("OID")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "APP"."GROUP"  add column  "MODULE_OID"  integer;
alter table "APP"."GROUP"   add constraint FK_GROUP_MODULE foreign key ("MODULE_OID") references "APP"."MODULE" ("OID");
create index "IDX_GROUP_MODULE" on "APP"."GROUP"("MODULE_OID");


-- Group_Module [Group2Module_Module2Group]
create table "APP"."GROUP_MODULE" (
   "GROUP_OID"  integer not null,
   "MODULE_OID"  integer not null,
  primary key ("GROUP_OID", "MODULE_OID")
);
alter table "APP"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
alter table "APP"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_MODULE foreign key ("MODULE_OID") references "APP"."MODULE" ("OID");
create index "IDX_GROUP_MODULE_GROUP" on "APP"."GROUP_MODULE"("GROUP_OID");
create index "IDX_GROUP_MODULE_MODULE" on "APP"."GROUP_MODULE"("MODULE_OID");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "APP"."USER"  add column  "GROUP_OID"  integer;
alter table "APP"."USER"   add constraint FK_USER_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
create index "IDX_USER_GROUP" on "APP"."USER"("GROUP_OID");


-- User_Group [User2Group_Group2User]
create table "APP"."USER_GROUP" (
   "USER_OID"  integer not null,
   "GROUP_OID"  integer not null,
  primary key ("USER_OID", "GROUP_OID")
);
alter table "APP"."USER_GROUP"   add constraint FK_USER_GROUP_USER foreign key ("USER_OID") references "APP"."USER" ("OID");
alter table "APP"."USER_GROUP"   add constraint FK_USER_GROUP_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
create index "IDX_USER_GROUP_USER" on "APP"."USER_GROUP"("USER_OID");
create index "IDX_USER_GROUP_GROUP" on "APP"."USER_GROUP"("GROUP_OID");


-- Category_Bookinfo [rel12]
alter table "APP"."BOOKINFO"  add column  "CATEGORY_OID"  integer;
alter table "APP"."BOOKINFO"   add constraint FK_BOOKINFO_CATEGORY foreign key ("CATEGORY_OID") references "APP"."CATEGORY" ("OID");
create index "IDX_BOOKINFO_CATEGORY" on "APP"."BOOKINFO"("CATEGORY_OID");


-- User.full name [User#att9]
create view "APP"."USER_FULL_NAME_VIEW" as
select AL1."OID" as "OID",  (AL1."FIRST_NAME"||' '||AL1."LAST_NAME") as "DER_ATTR"
from  "APP"."USER" AL1 ;

