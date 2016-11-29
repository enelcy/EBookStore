

-- -------- POPULATE DATABASE ---------------------------------------------------------------------------------------------

-- ---------- POPUPLATE TABLE `MODULE` ----------
INSERT INTO `module` (`oid`, `MODULEID`, `MODULENAME`) VALUES (1, 'sv3', 'admin');
INSERT INTO `module` (`oid`, `MODULEID`, `MODULENAME`) VALUES (2, 'sv1', 'member');

-- ---------- POPUPLATE TABLE `GROUP` ----------
INSERT INTO `group` (`oid`, `GROUPNAME`, `MODULE_OID`) VALUES (1, 'admin', 1);
INSERT INTO `group` (`oid`, `GROUPNAME`, `MODULE_OID`) VALUES (2, 'member', 2);

-- ---------- POPUPLATE TABLE `USER` ----------
INSERT INTO `user` (`oid`, `USERNAME`, `PASSWORD`, `EMAIL`, `GROUP_OID`) VALUES (1, 'manager', 'manager', 'manager@gmail.com', 1);

-- ---------- POPUPLATE TABLE `USER_GROUP` ----------
INSERT INTO `user_group` (`USER_OID`, `GROUP_OID`) VALUES (1, 1);
INSERT INTO `user_group` (`USER_OID`, `GROUP_OID`) VALUES (2, 2);


-- ---------- POPUPLATE TABLE `category` ----------
INSERT INTO `category` (`oid`, `category`) VALUES (1, 'Science fiction');
INSERT INTO `category` (`oid`, `category`) VALUES (2, 'Drama');
INSERT INTO `category` (`oid`, `category`) VALUES (3, 'Mystery');
INSERT INTO `category` (`oid`, `category`) VALUES (4, 'Action and Adventure');
INSERT INTO `category` (`oid`, `category`) VALUES (5, 'Horror');

