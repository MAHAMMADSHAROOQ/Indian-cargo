create table Delivery_status
(
Product_ID int not null,
Client_ID int not null,
Client_Name varchar(20),
Client_Last_Name varchar(20),
Client_Contact varchar(20),
Client_Address varchar(50),
Delivery_Stage1 varchar(20),
Delivery_Stage2 varchar(20),
Delivery_Stage3 varchar(20),
Delivery_Stage4 varchar(20),
Client_Payment_Status varchar(20),
primary key (product_ID),
)



select* from Delivery_status;




INSERT [Delivery_status] ([client_id],[product_ID], [Client_Name], [Client_Last_Name], [Client_Contact],
[Client_Address],[Delivery_stage1],[Delivery_stage2],[Delivery_stage3],[Delivery_stage4],[Client_Payment_Status])
VALUES('106','1116','neha','varma','999999999','America''washington','recived','null','null','null','payed')



INSERT [Delivery_status] ([client_id],[product_ID], [Client_Name], [Client_Last_Name], [Client_Contact],
[Client_Address],[Delivery_stage1],[Delivery_stage2],[Delivery_stage3],[Delivery_stage4],[Client_Payment_Status])
VALUES('105','1116','neha','varma','999999999','America''washington','recived','null','null','null','payed')



INSERT [Delivery_status] ([client_id],[product_ID], [Client_Name], [Client_Last_Name], [Client_Contact],
[Client_Address],[Delivery_stage1],[Delivery_stage2],[Delivery_stage3],[Delivery_stage4],[Client_Payment_Status])
VALUES('103','1116','nisha','varma','999999999','America''washington','null','null','on_the_way','null','payed')



INSERT [Delivery_status] ([client_id],[product_ID], [Client_Name], [Client_Last_Name], [Client_Contact],
[Client_Address],[Delivery_stage1],[Delivery_stage2],[Delivery_stage3],[Delivery_stage4],[Client_Payment_Status])
VALUES('102','1112','nihal','sharma','999999999','America''washington','null','null','null','deliverd','payed')




create table Delivery_master
(
product_ID int not null,
product_type varchar(50),
product_bill  varchar(50),
product_tax_status varchar(50),
product_quantity  varchar(50),
Client_Branch_Details  varchar(50),
product_recived_date  date,
product_deliverd_date date,
foreign key (product_ID) references Delivery_status(product_ID)
);





select *from delivery_master;
INSERT[Delivery_master](product_ID,product_type,product_bill,product_tax_status,product_quantity,client_branch_details,product_recived_date,product_deliverd_date)
VALUES('1112',' electronics ','not approved','clear',' 100', 'PUNE', CAST(N'01/01/2022' as date) ,CAST(N'2020-06-12' as date))




INSERT[Delivery_master](product_ID,product_type,product_bill,product_tax_status,product_quantity,client_branch_details,product_recived_date,product_deliverd_date)
VALUES('1113',' furniture ','approved','clear',' two containor', 'west bengol', CAST(N'01/01/2022' as date) ,CAST(N'2020-06-12' as date))



INSERT[Delivery_master](product_ID,product_type,product_bill,product_tax_status,product_quantity,client_branch_details,product_recived_date,product_deliverd_date)
VALUES('1115','electronics','approved' ,'clear',' 100', 'PUNE', CAST(N'01/01/2022' as date) ,CAST(N'2020-06-12' as date))








-----------------------------------


Create Procedure Proc_Delivery_status
(
@vProduct_ID int not null,
@vClient_ID int ,
@vClient_Name varchar(20),
@vClient_Last_Name varchar(20),
@vClient_Contact varchar(20),
@vClient_Address varchar(50),
@vDelivery_Stage1 varchar(20),
@vDelivery_Stage2 varchar(20),
@vDelivery_Stage3 varchar(20),
@vDelivery_Stage4 varchar(20),
@vClient_Payment_Status varchar(20)

)
As
Begin Transaction  Insert into  Delivery_status([Product_ID], [Client_ID], [Client_Name], [Client_Last_Name,Client_Contact,Client_Address ,Delivery_Stage1,Delivery_Stage2,[Delivery_Stage3],[Delivery_Stage4],[Client_Payment_Status]) 
values(@vProduct_ID,@vClient_ID,@vClient_Name,@vClient_Last_Name,@vClient_Contact,@vClient_Address,@vDelivery_Stage1,@vDelivery_Stage2,@vDelivery_Stage3,@vDelivery_Stage4)
Commit Transaction

Exec Proc_Delivery_status '', '', '','','','','','',''


-----------------
Create Procedure Proc_Delivery_master
(
@vproduct_ID int not null,
@vproduct_type varchar(50),
@vproduct_bill  varchar(50),
@vproduct_tax_status varchar(50),
@vproduct_quantity  varchar(50),
@vClient_Branch_Details  varchar(50),
@vproduct_recived_date  date,
@product_deliverd_date date,
)
 as 
 begin transaction insert into Delivery_master([product_ID],[product_type],[product_bill],[product_tax_status],[product_quantity],[Client_Branch_Details],[product_recived_date ],[product_deliverd_date])
 values(@vproduct_ID,@vproduct_type,@product_bill,@vproduct_tax_status,@vproduct_quantity,@vClient_Branch_Details ,@vproduct_recived_date,@vproduct_deliverd_date)

 Commit Transaction
 Exec Proc_Delivery_master'', '', '','','','','',''