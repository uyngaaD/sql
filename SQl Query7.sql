select *from sales.customers
where zip_code ='90278'and email like'%gmail.com'
select * from sales.customers
where phone is null and state='NY' and zip_code='11553'
select *from production.products
where len(product_name)<=20
select *from production.products
where model_year between 2016 and 2017 and list_price between 379 and 600;

--new Subquery
select *from sales.order_items
select *from production.products
select * from sales.order_items where product_id in
(
 select product_id from production.products where model_year='2016'
)
--93000
--88000
--2 doh large
select *from dbo.employee
select *from
select top 1 salary from dbo.employee 
where salary < (select max(salary)from dbo.employee)
order by salary desc
select max (salary)from dbo.empl
select *from [
--gedeg hun yamar department t ajildag be*/
--bob-s iluu tsalin hiij bga hun
select * from [dbo].[Employees.SubQ]

select *from [dbo].[employees_SubQ]
where department_id=
(
 select department_id from [dbo].[departments_SubQ] where department_name = 'hr'
)
--what is carol's department name based on department and employees table 
select department_NAME FROM [dbo].[Departments_subQ] where
department_id = (
select DEPARTMENT_ID from dbo.employees_subQ where Employee_name = 'Carol'
)
--boboos iluu tsalintaig ol show me employee name who is salary greater than Bob 
--find employees who work in the same department as alice 
--find emploees whose department name contain 'sales'
select department_name from [dbo].[Departments_subQ] where 
department_id =(
select department_id from dbo.employees_subQ where employee_name = 'alice'
)

select * from [dbo].[Departments_SubQ]
select * from [dbo].[Employees_SubQ]

select employee_name from [dbo].[Employees_SubQ]
where department_id=
(
	select department_id from[dbo].[Employees_SubQ]where employee_name='Alice'
)
--find emploees whose department name contain 'sales'
select employee_name from [dbo].[Employees_SubQ]
where department_id=
(
	select department_id from[dbo].[Departments_SubQ] where department_name='sales'
)
--boboos iluu tsalintaig ol show me employee name who is salary greater than Bob 
select employee_name, salary from [dbo].[Employees_SubQ]
where salary >
(
	select salary from[dbo].[employees_SubQ] where Employee_name='bob'
)

--how to get find only orders who lives in lives CA and ZIP CODE95008
--Sale.orders , sale.customers, 13
--how to get find only orders who lives in lives CA and ZIP CODE95008
select *from sales.orders
select *from sales.customers
--how to get product _name that stock less than 10pice;
select product_id where in
select * from production.products
select * from production.stocks 

select * from production.products 
where product_id in(
select product_id from production.stocks where quantity <10)
select max (list_price),min(list_price), avg(list_price) from production.products 
where product_id in(
select product_id from production.stocks where quantity <10)
--please provide me TOP 10 stocked products name
--please provide me product name that is out of stock
select *from production.products
select *from production.stocks
--how to get product _name that stock less than 10pice;
select product_id where in
select * from production.products
select * from production.stocks 

select * from production.products 
where product_id in(
select product_id from production.stocks where quantity <10)
--what is carol's department name based on department and employees table 
select*from[dbo].[Employees]
select *from[dbo].[Employees_SubQ]
select department_NAME FROM [dbo].[Departments_subQ] where
department_id = (
select DEPARTMENT_ID from dbo.employees_subQ where Employee_name = 'Carol'
)
--please provide me TOP 10 stocked products name
select *from[production].[products]
select *from[production].[stocks]
select product_name  from [production].[products]
where product_id in(
  select top 10 product_id from [production].[stocks] order by product_name desc)
--  please provide me product names that is out of stock
select*from[production].[products]
select *from[production].[stocks]
select product_name from[production].[products]
where product_id in( 
   select product_id from[production].[stocks]where product_name =stout'
   ) 
--what is carol's department name based on department and employees table 
 --boboos iluu tsalintaig ol show me employee name who is salary greater than Bob 
--find employees who work in the same department as alice 
--find emploees whose department name contain 'sales'
--how to get find only orders who lives in lives CA and ZIP CODE95008
--Sale.orders , sale.customers, 13
--how to get find only orders who lives in lives CA and ZIP CODE95008
--how to get product _name that stock less than 10pice;
--1.what is carol's department name based on department and employees table
select* from dbo.employees_subQ
select *from dbo.departments_subQ
select department_name from dbo.departments_subQ
where department_id =(
select department_id from dbo.employees_subQ where employee_name='carol')
--2.boboos iluu tsalintaig ol show me employee name who is salary greater than Bob
select *from dbo.employees_subQ
select employee_name from dbo.employees_subQ
where salary >(
select salary from dbo.employees_subQ where employee_name='Bob'
--find employees who work in the same department as alice 
select *from dbo.employees_subQ
select *from dbo.departments_subQ

select employee_name from dbo.employees_subQ
where department_id =(
   select department_id from dbo.employees_subQ where employee_name='alice')
--find emploees whose department name contain 'sales'
select *from dbo.employees_subQ
select *from dbo.departments_subQ
select employee_name from dbo.employees_subQ
where department_id =(
   select department_id from dbo.departments_subQ  where department_name='sales')
--how to get find only orders who lives in lives CA and ZIP CODE95008
select *from sales.customers
select *from sales.orders
select first_name , last_name, state, zip_code from sales.customers
where customer_id in(
  select customer_id from sales.orders where state='ca' and zip_code='95008')
--  how to get product _name that stock less than 10pice;
select * from production.products
select * from production.stocks
select *from production.products
where product_id in(
   select product_id from production.stocks where quantity <10)
   --please provide me TOP 10 stocked products name
select *from production.products
select *from production.stocks
select * from production.products
where product_id in(
  select top 10 product_id from production.stocks order by quantity desc)
--  please provide me product names that is out of stock
select*from production.products
select *from production.stocks
select product_name from prodduction.products
where product_id in( 
   select product_id from production.stocks where quantity =0)
--mireya  make how maney 'sales'
select*from sales.staffs
select*from sales.orders
select count(order_id) from sales.orders
where staff_id = (
   select staff_id  from  sales.staffs where first_name='Mireya')

 --how many order made baldwin bikes stores  ==sales.order;sales.stores
 select*from sales.orders
 select *from sales.stores
 select count(order_id)from sales.orders
 where store_id = (
 select store_id from sales.stores where store_name='Baldwin Bikes')

 select Count(*) as total_order_number, store_id
 from sales.orders Group by store_id 

 select *from sales. orders
 select count(*), order_date
 from sales.orders
 group by order_date
 order by 1 desc
 -- 1 gej hiine

 select *from sales. customers
 --how many customers for each city
 select count(*), city from sales.customers
 group by city
 order by 1 desc
 --how many customers for each state
 select count (*), state from sales. customers
 group by state
 order by 1 desc
 -- how many customers for each zip_code
 select count(*), zip_code from sales.customers
 group by zip_code
 order by 1 desc
 --how many female and male employee we have in DBo.Employee table
 select *from dbo.employee
 select count(*), gender from DBO.employee
 group by gender
 -- having ni to gruop by medeelel ogno , where ni from luuga ogno 
 select * from dbo.customer_info
 --each state d hichneen customer bn . how many  customer for each state
 select count(*), state from dbo.customer_info
 group by state
 having 
 --what is the summary of each female and male employees
 select SUM(salary),Gender from dbo.employee
 where employ
 group by gender
 --how many customer for each state
 select count(*), state 
 from dbo.customer_info
 group by state
 having count(*)>200
 --how many custumers in each city, how many city more then more then 10 customers
 select count(*), city from dbo.Customer_info
 group by city
 having count(*) >10
 --list of employees from each statecode with total salaries greater than 50000 dbo.employee
 --show a list of each state codes with 
 select *from dbo. customers
 select sum(salary),statecode from dbo.employee
 group by statecode
 having sum(salary)>50000
 order by 1 desc
 --show only records which have only more than 5 order day
 select *from sales. orders
 select count(*) order_date from sales.orders
 group by order_date
 having count(order_date)>=5
 --calculate total salary for male employees in each state
 select *from dbo.employee
 select sum(salary), StateCode from dbo.employee
 where gender='male'
 group by Statecode
 having sum(salary)>10000
 order by 1 desc
 --1.looking for order data that Qualifies following: Customer who live is in 90278area
 --with gmail and order should be shipped. --1 record
 select *from dbo.orders 
 select *from sales.customers
 select count(shipped_date), customerId from dbo.orders
 where email like'%gmail'and shipPostalCode = 90278
 group by customerId
 --how to get find only orders who lives in lives CA and ZIP CODE95008
select *from sales.customers
select *from sales.orders
select first_name , last_name, state, zip_code from sales.customers
where customer_id in(
  select customer_id from sales.orders where state='ca' and zip_code='95008')
  select*from sales.orders
  --1.looking for order data that Qualifies following: Customer who live is in 90278area
 --with gmail and order should be shipped. shipped is not null --1 record
 select* from sales.orders
 select*from
 ---1.looking for order data that Qualifies following: Customer who live is in 90278area
 --with gmail and order should be shipped. shipped is not null --1 record
 select* from sales.orders
 select* from sale.customers
 select* from sales.customers
 where shipped_date is not null and customer_is in(select customer_id
 where zip_code='90278' and email like '%gmail.com')

 select first_name  from sales.customers
where zip_code=90278 and email like '%gmail.com%' customer_id in(
  select customer_id from sales.orders where  email like'%gmail' and zip_code='90278'and )

 --looking for brand products that quantity is between 25,30 and i wants to see each brand_id have 
  --how many product has.in other words what brand product does not sell well.
  --does not sell well=quantity (25,30)left
  select *from production.stocks
  select*from production.products
  --2
  select count(*), brand_id from production.products
  where product_id in 
  (
  select product_id from production.stocks
  where quantity between 25 and 30
  )
  group by brand_id



