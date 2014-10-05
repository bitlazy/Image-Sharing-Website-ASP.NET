Create database imgbase


create table imginfo
(
name int constraint p1 IDENTITY(1,1) PRIMARY KEY ,
imgtitle varchar(80) not null,
imgtags varchar(255) not null,
imgdesc varchar(255) not null,
imgcat varchar(15),
imgheight int constraint p4 not null,
imgwidth int constraint p5 not null,
imgext varchar(5),
imgdate datetime,
uploadedby varchar(31)
)
truncate table imginfo
select * from imginfo


create table users
(
username varchar(31) unique,
password varchar(31),
email varchar(31) unique,
country varchar(20),
gender varchar(6),
active int,
secquest_question varchar(31),
secquest_answer varchar(31),
joindate datetime
)

select * from users
drop table users

