create database lab1;
create table users(
  id serial,
  firstname varchar(50),
  lastname varchar(50)
);

alter table users
    add column isadmin int;

alter table users
    alter column isadmin set data type boolean USING isadmin::boolean;


insert  into users(firstname,lastname) values('Yeldar','Mukhametkazin');


ALTER TABLE users ALTER COLUMN isadmin SET DEFAULT FALSE;


alter table users add constraint my_const primary key(id);


create table tasks(
  id serial,
  name varchar(50),
  user_id int
);


drop table tasks;

drop database lab1;