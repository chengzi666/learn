-----------------------------------------------------------------------------------------
------ 添加用户
-----------------------------------------------------------------------------------------
insert into sys_user
  (id, login_name, password, name, salt, is_admin, status, is_delete)
values
  ('ABCDEFGHIJKLMNOPQRSTUVWXYZ012345','admin','8b988cb8b23f880b96575b9fb8b4792b214b3152','admin','fe3d7e30d8e116e2',1,1,0);
  


-----------------------------------------------------------------------------------------
------ 添加角色
-----------------------------------------------------------------------------------------
insert into SYS_ROLE (ID, NAME, INDEX_NO, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE)
values ('80c8807a614b4db28cd317d220998a1f', 'admin', null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, '管理员角色', 0);


-----------------------------------------------------------------------------------------
------ 添加用户角色关系
-----------------------------------------------------------------------------------------
insert into SYS_USER_ROLE (USER_ID, ROLE_ID)
values ('ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', '80c8807a614b4db28cd317d220998a1f');


-----------------------------------------------------------------------------------------
------ 添加权限
-----------------------------------------------------------------------------------------
insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('c23c5c62bd1a48f1a901b4cb912f18ae', '基础权限', 'base_permission', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', 1, 11, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '基础权限', 0, 0);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('a1916c4cafda43ee8dd5b44a10363321', '修改密码', 'user_ch_pwd', 'c23c5c62bd1a48f1a901b4cb912f18ae', 2, 100, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '修改密码', 0, 0);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('88e3c5cd737a43059f02788676c5ebb8', '系统管理', 'sys_mgt', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', 1, 10, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '系统管理', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('5fff9173e0994f4eb653fa895df311b3', '权限管理', 'sys_permission_mgt', '88e3c5cd737a43059f02788676c5ebb8', 2, 100, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '权限管理', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('4818101bec884860b68f9109c5ac8b50', '角色管理', 'sys_role_mgt', '88e3c5cd737a43059f02788676c5ebb8', 2, 101, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '角色管理', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('83ddfea75d844f6fae8ef27eb068cab3', '用户管理', 'sys_user_mgt', '88e3c5cd737a43059f02788676c5ebb8', 2, 102, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '用户管理', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('49b8433efd33464d8febe2523fe4bb23', '添加权限', 'permission_add', '5fff9173e0994f4eb653fa895df311b3', 3, 1000, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '添加权限', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('6fff09b150e54a1fac76599a5ebbbe10', '修改权限', 'permission_edit', '5fff9173e0994f4eb653fa895df311b3', 3, 1001, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '修改权限', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('2b366e7532c5440292918baa44f5d3cc', '删除权限', 'permission_delete', '5fff9173e0994f4eb653fa895df311b3', 3, 1002, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '删除权限', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('a3cd6b0e8d5244acb1e98604fad16157', '添加角色', 'role_add', '4818101bec884860b68f9109c5ac8b50', 3, 1000, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, '添加角色', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', 'LCM', 'LCM', null, 0, 0, 0, '/', null, null, null, null, null, null, 0, 0);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('388a9f37b37542d297d8cb49a5bfc5cb', '修改角色', 'role_edit', '4818101bec884860b68f9109c5ac8b50', 3, 1001, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '修改角色', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('099236abb3414b7eb58f2c83804ac448', '删除角色', 'role_delete', '4818101bec884860b68f9109c5ac8b50', 3, 1002, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '删除角色', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('9d3fb4659ccd4e1aa211342e9a07ea02', '添加用户', 'user_add', '83ddfea75d844f6fae8ef27eb068cab3', 3, 1000, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '添加用户', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('0279ff970a4747dcb11e1fdd993c06f7', '修改用户', 'user_edit', '83ddfea75d844f6fae8ef27eb068cab3', 3, 1001, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '修改用户', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('3e35d1dd50354336972309de5bfe671b', '删除用户', 'user_delete', '83ddfea75d844f6fae8ef27eb068cab3', 3, 1002, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, '删除用户', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('296ef15a0212484bbab2c2edae15e748', '重置密码', 'user_reset_pwd', '83ddfea75d844f6fae8ef27eb068cab3', 3, 1003, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, '重置用户密码', 0, 1);

insert into SYS_PERMISSION (ID, NAME, CODE, PARENT_ID, GRADE, INDEX_NO, IS_LEAF, URL, MODULE_ID, CREATE_USER, CREATE_DATETIME, UPDATE_USER, UPDATE_DATETIME, REMARK, IS_DELETE, PERMISSION_TYPE)
values ('aa1f7b710acf4713a2006d57f69be224', '流程管理', 'process_mgt', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', 1, 11, null, null, null, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345', sysdate, null, null, null, 1, 0);


-----------------------------------------------------------------------------------------
------ 添加角色权限关系
-----------------------------------------------------------------------------------------
insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '0279ff970a4747dcb11e1fdd993c06f7');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '099236abb3414b7eb58f2c83804ac448');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '296ef15a0212484bbab2c2edae15e748');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '2b366e7532c5440292918baa44f5d3cc');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '388a9f37b37542d297d8cb49a5bfc5cb');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '3e35d1dd50354336972309de5bfe671b');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '4818101bec884860b68f9109c5ac8b50');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '49b8433efd33464d8febe2523fe4bb23');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '5fff9173e0994f4eb653fa895df311b3');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '6fff09b150e54a1fac76599a5ebbbe10');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '83ddfea75d844f6fae8ef27eb068cab3');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '88e3c5cd737a43059f02788676c5ebb8');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', '9d3fb4659ccd4e1aa211342e9a07ea02');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345');

insert into SYS_ROLE_PERMISSION (ROLE_ID, PERMISSIONS_ID)
values ('80c8807a614b4db28cd317d220998a1f', 'a3cd6b0e8d5244acb1e98604fad16157');
