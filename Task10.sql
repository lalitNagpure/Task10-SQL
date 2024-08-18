select * from emp

select distinct emp_id,emp_name,salary from emp 

--1nf
	
create table emp_details as select distinct emp_id,emp_name,salary from emp
	
select * from emp_details
	
create table dim_emp as
select  address, age ,department,emp_id  from emp
	
select * from dim_emp
	
select * from dim_emp as de
inner join emp_details as ed
on de.emp_id = ed.emp_id

-- 2nf

create table emp_details1 as select emp_id ,department_id ,department from emp
select * from emp_details1

create table emp_details2 as select emp_id ,department_id  from emp
select * from emp_details2

create table emp_details3 as select department_id ,department from emp
select * from emp_details3

select e.emp_id ,em.department_id ,em.department from emp_details2 as e
inner  join emp_details3 as em
on e.department_id = em.department_id

-- 3nf

create table emp_details4 as select emp_id,department,emp_name,mob,salary,joining_date from emp
select * from emp_details4

create table emp_details5 as select emp_name,department,mob,salary,joining_date from emp
select * from emp_details5

create table emp_details6 as select  emp_name,emp_id from emp
select * from emp_details6

select e.emp_name,e.department,e.mob,e.salary,e.joining_date,em.emp_name,em.emp_id from emp_details5 as e
inner join emp_details6 as em
on em.emp_name = e.emp_name
		