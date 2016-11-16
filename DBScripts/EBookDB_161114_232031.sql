-- Group [Group]
create table "APP"."group" (
   "oid"  int4  not null,
   "groupname"  varchar(255),
  primary key ("oid")
);


-- Module [Module]
create table "APP"."module" (
   "oid"  int4  not null,
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
  primary key ("oid")
);


-- User [User]
create table "APP"."user" (
   "oid"  int4  not null,
   "username"  varchar(255),
   "password"  varchar(255),
   "email"  varchar(255),
   "shippingaddress"  varchar(255),
   "birthdate"  date,
   "gender"  varchar(255),
   "lastname"  varchar(255),
   "firstname"  varchar(255),
  primary key ("oid")
);


-- Category [ent1]
create table "APP"."category" (
   "oid"  int4  not null,
   "category"  varchar(255),
  primary key ("oid")
);


-- BookInfo [ent3]
create table "APP"."bookinfo" (
   "oid"  int4  not null,
   "isrent"  bool,
   "issale"  bool,
   "author"  varchar(255),
   "publisher"  varchar(255),
   "loginprice"  float8,
   "category"  varchar(255),
   "photo"  varchar(255),
   "price"  float8,
   "description"  text,
   "name"  varchar(255),
   "isbn"  int4,
  primary key ("oid")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "APP"."group"  add column  "module_oid"  int4;
alter table "APP"."group"   add constraint fk_group_module foreign key ("module_oid") references "APP"."module" ("oid");


-- Group_Module [Group2Module_Module2Group]
create table "APP"."group_module" (
   "group_oid"  int4 not null,
   "module_oid"  int4 not null,
  primary key ("group_oid", "module_oid")
);
alter table "APP"."group_module"   add constraint fk_group_module_group foreign key ("group_oid") references "APP"."group" ("oid");
alter table "APP"."group_module"   add constraint fk_group_module_module foreign key ("module_oid") references "APP"."module" ("oid");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "APP"."user"  add column  "group_oid"  int4;
alter table "APP"."user"   add constraint fk_user_group foreign key ("group_oid") references "APP"."group" ("oid");


-- User_Group [User2Group_Group2User]
create table "APP"."user_group" (
   "user_oid"  int4 not null,
   "group_oid"  int4 not null,
  primary key ("user_oid", "group_oid")
);
alter table "APP"."user_group"   add constraint fk_user_group_user foreign key ("user_oid") references "APP"."user" ("oid");
alter table "APP"."user_group"   add constraint fk_user_group_group foreign key ("group_oid") references "APP"."group" ("oid");


