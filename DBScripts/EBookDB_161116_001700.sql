-- BookInfo_Category [rel1]
alter table `bookinfo`  add column  `category_oid`  integer;
alter table `bookinfo`   add index fk_bookinfo_category (`category_oid`), add constraint fk_bookinfo_category foreign key (`category_oid`) references `category` (`oid`);


