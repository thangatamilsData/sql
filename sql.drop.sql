create schema loot;

use loot;

create table branch(
br_id int primary key auto_increment,
address varchar(50) not null
);

create table main(
no int primary key auto_increment,
name varchar(50) not null,
age int default "22",
br_id int,
constraint fk_b foreign key (br_id) references branch(br_id) on delete set null
);

drop table main;

insert into branch (address) values ("thanjavur"),
("coimbatore"),
("chennai"),
("bengaluru");

insert into main (name,br_id) values("Tamil",2),
("Naveen",1),
("lakh",3),
("Sathish",2),
("Vicky",4),
("Loops",2),("luck",1),("optimus",4);

update branch set address="Trichy" where br_id=4;

select * from branch;
select * from main;

update main set age=21 where no=3;

alter table main add dp varchar(30);

update main set dp = "EEE" where no = 4;

select * from main where br_id=(select br_id from branch where address="chennai");

select m.name,m.age, b.address from main as m right join branch as b on b.br_id = m.br_id ;

delete from branch where address="coimbatore";

insert into branch (address) values ("Elaval")

