DROP DATABASE IF EXISTS TRUONGHOC;
-- tạo database truonghoc
CREATE DATABASE truonghoc 
    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use truonghoc;


-- tao bang phonggd
create table phonggd(
    maphg varchar(5) primary key,
    tenphg NVARCHAR(225) not null
)CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE phonggd CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- tao bang loaihinh
create table loaihinh(
    maloaihnh varchar(2) primary key,
    tenloaihnh NVARCHAR(225) not null
)CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE loaihinh CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- tao bang loaitruong
CREATE TABLE loaitruong (
    maloaitrng VARCHAR(2) PRIMARY KEY,
    tenloaitrng NVARCHAR(225) NOT NULL 
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE loaitruong CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- tao bang truong
create table truong(
    matruong varchar(20) primary key,
    tentruong NVARCHAR(225) not null,
    sogddt NVARCHAR(225) not null,
    maphong varchar(5),
    diachi NVARCHAR(225),
    maloaihinh varchar(2),
    maloaitruong varchar(2),
    foreign key(maphong) references phonggd(maphg),
    foreign key(maloaihinh) references loaihinh(maloaihnh),
    foreign key(maloaitruong) references loaitruong(maloaitrng)
)CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE truong CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- In ra



DESCRIBE truong;
DESCRIBE loaitruong;
DESCRIBE loaihinh;
DESCRIBE phonggd;
