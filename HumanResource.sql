create database humanResource;
create table employees (
employeeId integer not null,
firstName varchar (25) not null,
lastName varchar (25) not null,
dateOfBirth date
);
alter table employees add column phoneNumber varchar (10), add column email varchar (30), add column salary int, add column postalAdress varchar (6); 
alter table employees drop column postalAdress;
create table employeeAddresses (
country varchar(25)
);
drop table employeeaddresses;
desc employees;
select * from employees;

insert into employees values ('1', 'Andrei', 'Irimia', '1985-05-17', '0755220045', 'andrei.irimia@gmail.com', '3200');
insert into employees values ('2', 'Dragos', 'Munteanu', '1991-10-03', '0755884410', 'dragos@gmail.com', '2800'), 
('3', 'Mihaela', 'Serban', '1988-04-15', '0788663322', 'mihaela@gmail.com', '3500');
select firstName, lastName from employees;
select * from employees where lastName in ("serban");
select * from employees where lastName like 'm%';
select * from employees where lastName like '%an%';
select * from employees where dateOfBirth > '1985-12-31';
select * from employees where dateOfBirth > '1980-12-31' and firstName in ('mihaela');
select * from employees where dateOfBirth > '1985-12-31' or firstName in ('andrei');
select * from employees where firstName not in ('Dragos');
select * from employees where left(lastName,1)='M';
select * from employees where year(dateOfBirth)>1985 and firstName= 'Dragos';
select max(salary) from employees;
select min(salary) from employees;
select avg(salary) from employees;

