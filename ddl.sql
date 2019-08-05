-- **数据库级别：**  
--  显示所有数据库 
 
show databases

--  use namedatabases


--  创建一个数据库  
create database name

--  创建指定字符集的数据库  
create database if not exists test03 default character set = 'utf8';
通过default character set = 语句来指定DB的字符集.

--  显示数据库的创建信息   

show  create database name

--  修改数据库的编码  
1)首先查看数据库字符编码，命令为：
show variables like’collation_%’;
show variables like’character_set_%’;
2)在命令行修改字符编码（例如gb3212）
set character_set_client=gb2312;客户端编码方式
set character_set_connection= gb2312;建立连接使用的编码
set character_set_database= gb2312;数据库的编码
set character_set_results= gb2312;结果集的编码
set character_set_server= gb2312;数据库服务器的编码
保证前五个采用的编码方式一样，就不会出现乱码问题。
set character_set_system= gb2312;
set collation_connection= gb2312;
set collation_database= gb2312;
set collation_server= gb2312;

--  删除一个数据库   
drop database name

-- **表级别**
--  修改表名
alter table yuan rename to xin

--  修改字段的数据类型
alter table student modify cloumn name varchar(20)

--  修改字段名
alter table student rename age to age1

--  添加字段
alter table student add score varchar(10)

--  删除字段
alter table student drop cloumn age

--  修改表的存储引擎
alter table student engine=InnoDB

--  删除表的外键约束
alter table student drop constraint id

--  删除一张表
drop table student
