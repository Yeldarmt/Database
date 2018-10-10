create database lab2;

create table  countries(
  country_id serial primary key ,
  country_name varchar(50) ,
  region_id int ,
  population int
);

insert into countries
values
       (default , 'Kaz', 9, 1700000);

select * from countries;

insert into countries (country_id, country_name)
values (default , 'USA');

update countries set region_id = null ;

insert into countries (country_id, country_name, region_id, population)
values (default , 'England', 12, 50000000),
       (default , 'China', 85, 40000000),
       (default , 'Russia', 54, 160000000);

alter table countries
    alter column country_name set default 'Kazakhsatn';

insert into countries values
                             (7, default , 48, 456123);

insert into countries (country_id , country_name)
values (default , default );

create table countries_new(
  like countries
);

insert into countries_new
select * from countries;

select * from countries_new;

update countries_new set region_id = 1
where region_id is null ;

update countries_new set population = population + (population*0.1)
    returning country_name, population as "New Population";

delete from countries
where population < 100000;

delete from countries_new
as cn using countries as co
where cn.country_id=co.country_id
returning *;

delete from countries
returning *;