create table member (
	id int auto_increment primary key,
    pass varchar(10) not null,
    name varchar(20) not null,
    regidate date default (curdate()) not null
);

insert into member (pass, name) values ('pass1', 'name1');
insert into member (pass, name) values ('pass2', 'name2');
insert into member (pass, name) values ('pass3', 'name3');
insert into member (pass, name) values ('pass4', 'name4');
insert into member (pass, name) values ('pass5', 'name5');