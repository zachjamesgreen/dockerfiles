create table users (username varchar, password varchar, ftp_disabled boolean);
insert into users (username,password,ftp_disabled) values ('admin',md5('admin'), false);
insert into users (username,password,ftp_disabled) values ('zach',md5('zach'), true);
