create database dhanushdb;
use dhanushdb;
create table countries(
country_id int not null primary key,
country_name varchar(60) not null,
region_id int not null );
insert into countries (country_id,country_name,region_id) values (1,'India',100);
CREATE TABLE  jobs ( 
JOB_ID varchar(10) NOT NULL UNIQUE, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL);
INSERT INTO jobs (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES (22,' ',9000,50000);
CREATE TABLE employees ( 
EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY, 
FIRST_NAME varchar(20) DEFAULT NULL, 
LAST_NAME varchar(25) NOT NULL, 
EMAIL varchar(25) NOT NULL, 
PHONE_NUMBER varchar(20) DEFAULT NULL, 
HIRE_DATE date NOT NULL, 
JOB_ID varchar(10) NOT NULL, 
SALARY decimal(8,2) DEFAULT NULL, 
COMMISSION_PCT decimal(2,2) DEFAULT NULL, 
MANAGER_ID decimal(6,0) DEFAULT NULL, 
DEPARTMENT_ID decimal(4,0) DEFAULT NULL);
alter table employees modify column JOB_ID int;
alter table employees modify column PHONE_NUMBER decimal;
alter table employees modify column COMMISSION_PCT decimal;
INSERT INTO employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (1,'RAJ','KANNA','DKDHANUSH@GMAIL.COM',6379752772,3/12/2021,45007,12000,200,41758,9265);
alter table countries rename country_new;
select country_id as 'Country ID',country_name as 'Country Name' from country_new;
insert into country_new (country_id,country_name,region_id) values (1,'India',100);
insert into country_new (country_id,country_name,region_id) values (2,'China',362);
insert into country_new (country_id,country_name,region_id) values (3,'America',851);
insert into country_new (country_id,country_name,region_id) values (4,'Japan',947);
insert into country_new (country_id,country_name,region_id) values (5,'England',605);
select * from country_new order by country_name desc;

