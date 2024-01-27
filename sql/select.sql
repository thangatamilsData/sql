create schema fix;

use fix;

create table branch(
br_id int primary key auto_increment,
address varchar(30) not null,
dp varchar(30) default "CSE"
);

create table main (
no int primary key auto_increment,
name varchar(20) not null,
age int not null,
br_id int,
constraint fk_id foreign key (br_id) references branch(br_id) on delete set null
);

insert into branch (address,dp) values ("thanjavur","CSE"),
("coimbatore","IT"),
("chennai","EEE"),
("mumbai","IT"),
("delhi","CSE"),
("bengaluru","EEE");

insert into main (name,age,br_id) values ("Sathish",22,2),
("Vicky",23,1),
("vikram",20,3),
("suhba",22,4),
("naveen",25,6),
("lakh",24,5);

select * from branch;
select * from main;

alter table main add score varchar(30);

alter table branch change dp department varchar(30);

update branch set department="ECE" where br_id=6;

delete from branch where br_id=4;

alter table main drop score;

select m.name,m.age, b.address,b.department from main as m left join branch as b on m.br_id = b.br_id where age>24 order by age asc 