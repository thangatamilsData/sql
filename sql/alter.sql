create database lets;
use lets;

create table student(
st_id int primary key auto_increment,
score int not null,
address varchar(30) default "Bengaluru"
);

create table main(
no int primary key auto_increment,
name varchar(30) not null,
Department int not null,
st_id int,
constraint fr foreign key (st_id) references student(st_id) on delete set null
);

insert into student (score, address) values
(85, "Coimbatore"),
(90, "Bengaluru"),
(45, "Thanjavur"),
(62, "Pattukkottai"),
(35, "Hyderabad"),
(70, "Delhi");

select * from student;

insert into main (name, Dp, st_id) values
("Optimus", "CSE", 1),
("ThangaTamil", "IT", 3),
("Thangam", "MECH", 6),
("Mafia", "EEE", 5),
("Selvan", "IT", 4),
("Homelander", "CSE", 1),
("Good One", "ECE", 2),
("ME", "EEE", 3),
("Thangatamil", "IT", 5);

select * from main;
select * from student;

alter table main change Department Dp varchar(30);

select st_id, score from student;

select m.no,m.name,m.Dp, s.address,s.score from main as m inner join student as s on m.st_id = s.st_id where score>50 order by score;

select * from main where st_id in (select st_id from student where score>50);

update main set name="MEN" where no=6;

select m.Dp, count(Dp), avg(s.score) from main as m inner join student as s on m.st_id = s.st_id group by Dp having count(Dp)>1