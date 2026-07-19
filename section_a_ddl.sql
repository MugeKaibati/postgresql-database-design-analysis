-- ============================================
-- Section A: Building the Database (DDL)
-- Name: Mung'athia RoyMartin Mugendi
-- Date: 19 July 2026
-- ============================================

-- Creating the schema
create schema greenwood_academy;

set search_path to greenwood_academy;


-- SECTION A - Building the Database (DDL)

-- Q1. Create a schema called greenwood_academy and make sure SQL is using it before you do anything else.

create schema greenwood_academy;

set search_path to greenwood_academy;

-- Q2. Create the students table with the following columns:


create table greenwood_academy.students (
student_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
gender varchar(1),
date_of_birth date,
class varchar(10),
city varchar(50)
);

select *
from students;

-- Q3. Create the subjects table with the following columns:

create table greenwood_academy.subjects (
subject_id int primary key,
subject_name varchar(100) not null unique,
department varchar(50),
teacher_name varchar(100),
credits int
);
select *
from subjects;

-- Q4. Create the exam_results table with the following columns:

create table greenwood_academy.exam_results (
 result_id int primary key,
 student_id int not null,
 subject_id int not null,
 marks int not null,
 exam_date date,
grade varchar(2)
);

select *
from greenwood_academy.exam_results;

-- Q5. After creating the students table, the school realises they forgot to include a phone number column. Use ALTER TABLE to add a column called phone_number with data type VARCHAR(20).

alter table greenwood_academy.students
add column phone_number varchar(20);

select *
from greenwood_academy.students;

-- Q6. The column credits in the subjects table needs to be renamed to credit_hours. Write the SQL to rename it.
alter table greenwood_academy.subjects
rename column credits to credit_hours ;

select *
from greenwood_academy.subjects;

-- Q7. The school decides they no longer need the phone_number column you added in Q5. Write the SQL to remove it completely from the students table.
alter table greenwood_academy.students
drop column  phone_number;

select *
from greenwood_academy.students;