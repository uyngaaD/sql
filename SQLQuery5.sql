Select * FROM PRODUCTION.CUSTOMERS 
WHERE email like '%yahoo.com' and 
STATE IN ('CA', 'NY') and zip_code 
IN('14217', '11372')

SELECT DISTINCT (List_price) FROM SALES.order_items
WHERE list_price > 599 and list_price<700 and discount=0.20;

SELECT * FROM DBO. Employee
order by salary desc

SELECT * FROM DBO.Customer_Info
order by customer_id asc

SELECT * FROM DBO.Customer_Info
Where last_name not like 'a%'
order by last_name asc

--A,Z
--Lastname not start with a 
/*olon mur comment bichih bol
od slash ashiglanaa */

select employeeID as ajilchin_dugar from 
IM
SELECT requiredDate as expected_due_day, * from dbo.orders;

select first_name +' '+ LAST_NAME AS full_name, *from dbo.customer_Info

select first_name +' '+ LAST_NAME AS full_name,street+' '+city +' '+ state as full_address, *from dbo.customer_Info

select( list_price*(1-discount)) + ((list_price*(1-discount))*0.15)
as sale_Price,*FROM[Sales].[order_items];

select (list_price * (1-discount)) *1.15 as sales_price
from sales.order_items

select RTRIM(contact),LTRIM(contactname), * FROM DBO.Customers
' khan-uul '

Select LOWER(contacttitle) as shine_lower_case_cont, UPPER(address),* FROM DBO.Customers
/*baruun talaas phone s4 ig hari*/
select RIGHT(phone, 4), * FROM DBO.Customers
Select LOWER(contacttitle) as shine_lower_case_cont, UPPER(address),* FROM dbo.Customers
/* first name ehnii 4*/
select left (first_name, 4)From DBO.customer_Info

--emailnii suulni5 oron 
select right (email, 5)from DBO.customer_Info
 
-- hamgin chuhal 'LEN'USEGNII URT 
SELECT LEN(frist_name), frist_name from dbo. Customer_Info
order by 1 desc
select LEN(last_name), Last_name from dbo.customer_Info
order by 1 desc
select Max(LEN (first_name)), from dbo.customer_Info
order by 1 desc

-- 11 usegtei bugd ig 
select * from dbo.Customer_Info
Where len(first_name)>=10

SELECT Left (first_name, 5)
FROM DBO.customer_Info

SELECT Right (last_name, 4)
FROM DBO.customer_Info

SELECT MAX (LEN(first_name))
FROM DBO.customer_Info

SELECT MIN (LEN(first_name))
FROM DBO.customer_Info
Select LOWER(contacttitle) as shine_lower_case_cont, UPPER(address),* FROM DBO.Customers
/*baruun talaas phone s4 ig hari*/
select RIGHT(phone, 4), * FROM DBO.Customers
Select LOWER(contacttitle) as shine_lower_case_cont, UPPER(address),* FROM dbo.Customers
/* first name ehnii 4*/
select left (first_name, 4)From DBO.customer_Info 


SELECT  LOWER(first_name),* FROM DBO.Customer_Info
Select LOWER(contacttitle) as shine_lower_case_cont, UPPER(address),* FROM DBO.Customers
/*baruun talaas phone s4 ig hari*/

SELECT left (first_name, 5) as shine_

FROM
SELECT GETDATE()
