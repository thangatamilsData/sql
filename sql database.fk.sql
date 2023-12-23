create schema box;

use box;

create table branch(
branch_id int primary key auto_increment,
br_name varchar(50) default "unassigned",
address varchar(30)
);

create table main(
no int primary key auto_increment,
name varchar(30),
age int,
branch_id int,
constraint fk_branchid foreign key(branch_id) references branch(branch_id) on delete set null
);

insert into branch (br_name,address) values 
("loloo","thanjavur"),
("rolex","coimbatore"),
("platz","bangalore"),
("assests","america"),("the works","london"),("needztoo","austrila");

insert into main (name,age,branch_id) values 
("vikram",22,2),
("sathish",23,3),
("naveen",25,4),
("ruban",40,1),
("luck",42,2),
("lakh",33,6);

select * from main;
select * from branch;

delete from branch where branch_id=6