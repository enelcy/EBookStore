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
   "email"  varchar(255),
   "password"  varchar(255),
   "firstname"  varchar(255),
   "lastname"  varchar(255),
   "gender"  varchar(255),
   "birthdate"  date,
   "shippingaddress"  varchar(255),
   "username"  varchar(255),
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
   "isbn"  varchar(255),
   "name"  varchar(255),
   "description"  text,
   "price"  float8,
   "photo"  varchar(255),
   "category"  varchar(255),
   "loginprice"  float8,
   "publisher"  varchar(255),
   "author"  varchar(255),
   "issale"  bool,
   "isrent"  bool,
     int4,
  primary key ("oid")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "APP"."group"  add column  "module_oid"  int4;
alter table "APP"."group"   add constraint fk_group_module foreign key ("module_oid") references "APP"."module" ("oid");
create index "idx_group_module" on "APP"."group"("module_oid");


-- Group_Module [Group2Module_Module2Group]
create table "APP"."group_module" (
   "group_oid"  int4 not null,
   "module_oid"  int4 not null,
  primary key ("group_oid", "module_oid")
);
alter table "APP"."group_module"   add constraint fk_group_module_group foreign key ("group_oid") references "APP"."group" ("oid");
alter table "APP"."group_module"   add constraint fk_group_module_module foreign key ("module_oid") references "APP"."module" ("oid");
create index "idx_group_module_group" on "APP"."group_module"("group_oid");
create index "idx_group_module_module" on "APP"."group_module"("module_oid");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "APP"."user"  add column  "group_oid"  int4;
alter table "APP"."user"   add constraint fk_user_group foreign key ("group_oid") references "APP"."group" ("oid");
create index "idx_user_group" on "APP"."user"("group_oid");


-- User_Group [User2Group_Group2User]
create table "APP"."user_group" (
   "user_oid"  int4 not null,
   "group_oid"  int4 not null,
  primary key ("user_oid", "group_oid")
);
alter table "APP"."user_group"   add constraint fk_user_group_user foreign key ("user_oid") references "APP"."user" ("oid");
alter table "APP"."user_group"   add constraint fk_user_group_group foreign key ("group_oid") references "APP"."group" ("oid");
create index "idx_user_group_user" on "APP"."user_group"("user_oid");
create index "idx_user_group_group" on "APP"."user_group"("group_oid");


