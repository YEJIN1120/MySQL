create table myfile (pnu2024
	idx int auto_increment primary key,
    title varchar(200) not null,
    cate varchar(30),
    ofile varchar(100) not null,
    sfile varchar(30) not null,
    postdate date default (curdate()) not null
);