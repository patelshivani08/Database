CREATE TABLE Customers (
  cust_ID integer,
  cust_Name varchar(255),
  cust_city varchar(255),
  cust_RoomNo integer,
  checkIn_Time timestamptz
);


INSERT INTO Customers (cust_ID, cust_Name,  cust_city, cust_RoomNo,checkIn_Time) VALUES
(1, 'Shivani','Vadodara', 201, '2022-05-25 05:50:08'),
(2, 'Mihir', 'Surat', 202 , '2022-06-26 06:50:08'),
(3, 'Kajal', 'Delhi', 203,'2022-07-27 07:51:04'),
(4, 'Hardil','Rajpipla', 204, '2022-08-28 08:57:09'),
(5, 'Maahir', 'Bhruch', 205,'2022-09-29 02:55:10');


select * from Customers