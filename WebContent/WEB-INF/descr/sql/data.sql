

-- -------- POPULATE DATABASE ---------------------------------------------------------------------------------------------

-- ---------- POPUPLATE TABLE `MODULE` ----------
INSERT INTO `module` (`oid`, `MODULEID`, `MODULENAME`) VALUES (1, 'sv3', 'admin');
INSERT INTO `module` (`oid`, `MODULEID`, `MODULENAME`) VALUES (2, 'sv1', 'eBookStore');

-- ---------- POPUPLATE TABLE `GROUP` ----------
INSERT INTO `group` (`oid`, `GROUPNAME`, `MODULE_OID`) VALUES (1, 'admin', 1);
INSERT INTO `group` (`oid`, `GROUPNAME`, `MODULE_OID`) VALUES (2, 'Customers', 2);

-- ---------- POPUPLATE TABLE `USER` ----------
INSERT INTO `user` (`oid`, `USERNAME`, `PASSWORD`, `EMAIL`, `GROUP_OID`) VALUES (1, 'manager', 'manager', 'manager@gmail.com', 1);

-- ---------- POPUPLATE TABLE `USER_GROUP` ----------
INSERT INTO `user_group` (`USER_OID`, `GROUP_OID`) VALUES (1, 1);
INSERT INTO `user_group` (`USER_OID`, `GROUP_OID`) VALUES (1, 2);

-- ---------- POPUPLATE TABLE `GROUP_MODULE` ----------
INSERT INTO `group_module` (`GROUP_OID`, `MODULE_OID`) VALUES (1, 1);
INSERT INTO `group_module` (`GROUP_OID`, `MODULE_OID`) VALUES (1, 2);
INSERT INTO `group_module` (`GROUP_OID`, `MODULE_OID`) VALUES (2, 2);


-- ---------- POPUPLATE TABLE `category` ----------
INSERT INTO `category` (`oid`, `category`) VALUES (1, 'Science fiction');
INSERT INTO `category` (`oid`, `category`) VALUES (2, 'Drama');
INSERT INTO `category` (`oid`, `category`) VALUES (3, 'Mystery');
INSERT INTO `category` (`oid`, `category`) VALUES (4, 'Action and Adventure');
INSERT INTO `category` (`oid`, `category`) VALUES (5, 'Horror');

-- ---------- POPUPLATE TABLE "BOOKINFO" ----------
INSERT INTO "APP"."BOOKINFO" ("oid", "isbn", "description", "name", "price", "photo", "loginprice", "publisher", "author", "issale", "isrent", "category_oid", "category") VALUES (1, 9787560542966, 'DESCRIPTION for category 1.', 'Science fiction name 1', 39, 'upload/small_chair_5.jpg', 35, 'publisher 1', 'author 1', true, true, 1, 'Science fiction');
INSERT INTO "APP"."BOOKINFO" ("oid", "isbn", "description", "name", "price", "photo", "loginprice", "publisher", "author", "issale", "isrent", "category_oid", "category") VALUES (2, 9787560542967, 'DESCRIPTION for category 1.', 'Science fiction name 2', 49, 'upload/small_table_1.jpg', 44, 'publisher 2', 'author 2', false, true, 1, 'Science fiction');
INSERT INTO "APP"."BOOKINFO" ("oid", "isbn", "description", "name", "price", "photo", "loginprice", "publisher", "author", "issale", "isrent", "category_oid", "category") VALUES (3, 9787560542968, 'DESCRIPTION for category 2.', 'Drama name 1', 59, 'upload/small_chair_2.jpg', 56, 'publisher 3', 'author 3',  true, false, 2, 'Drama');
INSERT INTO "APP"."BOOKINFO" ("oid", "isbn", "description", "name", "price", "photo", "loginprice", "publisher", "author", "issale", "isrent", "category_oid", "category") VALUES (4, 9787560542969, 'DESCRIPTION for category 2.', 'Drama name 2', 28, 'upload/small_chair_2.jpg', 25, 'publisher 4', 'author 4', false, false, 2, 'Drama');
INSERT INTO "APP"."BOOKINFO" ("oid", "isbn", "description", "name", "price", "photo", "loginprice", "publisher", "author", "issale", "isrent", "category_oid", "category") VALUES (5, 9781580628556, 'DESCRIPTION for category 2.', 'Drama name 3', 44, 'upload/small_lamp_4.jpg', 39, 'publisher 5', 'author 5', true, true, 2, 'Drama');
INSERT INTO "APP"."BOOKINFO" ("oid", "isbn", "description", "name", "price", "photo", "loginprice", "publisher", "author", "issale", "isrent", "category_oid", "category") VALUES (6, 9781580628557, 'DESCRIPTION for category 3.', 'Mystery name 1', 79, 'upload/small_table_4.jpg', 75, 'publisher 6', 'author 6', true, true, 3, 'Mystery');
INSERT INTO "APP"."BOOKINFO" ("oid", "isbn", "description", "name", "price", "photo", "loginprice", "publisher", "author", "issale", "isrent", "category_oid", "category") VALUES (7, 9781580628558, 'DESCRIPTION for category 4.', 'Action and Adventure name 1', 80, 'upload/small_table_1.jpg', 75, 'publisher 5', 'author 1', true, false, 4, 'Action and Adventure');
INSERT INTO "APP"."BOOKINFO" ("oid", "isbn", "description", "name", "price", "photo", "loginprice", "publisher", "author", "issale", "isrent", "category_oid", "category") VALUES (8, 9781580628559, 'DESCRIPTION for category 4.', 'Action and Adventure name 2', 108, 'upload/small_lamp_1.jpg', 105, 'publisher 1', 'author 1', true, true, 4, 'Action and Adventure');



