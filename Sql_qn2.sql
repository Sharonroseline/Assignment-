CREATE TABLE Customer (Customer_Id varchar(255));
 INSERT INTO Customer VALUES('Customer_Id'),('Abhinash'),('Vipin'),('Mahesh'),('Bijoy'),('Bhabani'),('Ashutosh');
 CREATE TABLE Voucher (Voucher_Id varchar(255) UNIQUE);
 INSERT INTO Voucher VALUES('ABXFH'),('SDFGH'),('ERTYY'),('PPLKM')
 ;with cte 
 as(select *,row_number() over(order by Customer_Id) r from Customer)
 ,cte2 as(select *,row_number() over(order by Voucher_Id) r from Voucher)
    
 select Customer_Id Customer_Key,Voucher_Id Gift_Voucher_Key
 from cte c1
 left join cte2 c2 on c1.r=c2.r;
 
 
