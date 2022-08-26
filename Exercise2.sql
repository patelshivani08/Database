
/*Print Distinct City from Table Customers and Print Count
Distinct City from Table Customers.*/

SELECT count (DISTINCT city ) As "Count of dis.city"
from customers;
/* Ans = 69*/



/*Write a SQL query to get the least number of quantities and
the highest number of quantities bought by the user consider
the OrderDetails Table.*/

SELECT MAX(quantity)FROM order_details; /* Ans = 120*/
SELECT Min(quantity)FROM order_details;  /* Ans = 1 */


/*Print the total and an average number of quantities ordered by
users, consider the OrderDetails Table.*/

select * from order_details;
SELECT sum("quantity")FROM "order_details";/* Ans = 12743*/
SELECT  AVG("quantity") FROM "order_details";/* Ans = 24.6003861003861004*/

/*Print name of the product which is present at the 5th position
till the 15th position from Products table, use LIMIT keyword.*/

SELECT "productname" from "products" LIMIT 11 offset 4;


/*Write a SQL query for all the details of the supplier whose
name consists of “A” at the second position from the Suppliers
table.*/

SELECT * FROM "suppliers" WHERE POSITION ('a' IN "suppliername")=2;


/*Print the details of the customer who doesn’t stay in the USA
and Canada from the Customers table.*/

SELECT * FROM "customers" WHERE "country" !='USA' And "country" !='Canada';

/*Print the details of all the orders which were placed between
the year 2020 to 2021 also print the same in descending order
from the OrderDetails table.*/

select order_details.orderdetailid, order_details.orderid, orders.orderid, orders.orderdate
from (order_details 
inner join orders on orders.orderid = order_details.orderid)
WHERE orderdate BETWEEN orders.orderdate >= '2020-01-01' 
AND orders.orderdate <= '2021-12-31';


/*Write a query to show the distinct city and their count from
the Customers table.*/

SELECT count (DISTINCT city ) As "Count of dis.city"
from customers;/* Ans = 69*/

/*Write a query to fetch details of all employees excluding the
employees with first names, “Sanjay” and “Sonia” from the
Employees table.*/

SELECT * FROM "employees" where "firstname" = 'Sanjay' OR "firstname" = 'Sonia';


/*Duplicate a table as similar to the Suppliers table and name it
as SupplierDetail.*/

SELECT * FROM "suppliers";
CREATE TABLE "SupplierDetail" AS SELECT * FROM "suppliers";
SELECT * FROM "SupplierDetail";


/*Delete customer details whose country is Venezuela and print
the rest of the Customer table*/

DELETE FROM customers
WHERE country = 'Venezuela';
Select * from customers;
