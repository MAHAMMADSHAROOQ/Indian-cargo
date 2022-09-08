CREATE TABLE Delivery_Update
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
PRIMARY KEY (product_ID),
)




INSERT [Delivery_Update] ([client_id],[product_ID], [Client_Name], [Client_Last_Name], [Client_Contact],
[Client_Address],[Delivery_stage1],[Delivery_stage2],[Delivery_stage3],[Delivery_stage4],[Client_Payment_Status])
VALUES('101','1116','neha','varma','999999999','America''washington','recived','null','null','null','payed')

INSERT [Delivery_Update] ([client_id],[product_ID], [Client_Name], [Client_Last_Name], [Client_Contact],
[Client_Address],[Delivery_stage1],[Delivery_stage2],[Delivery_stage3],[Delivery_stage4],[Client_Payment_Status])
VALUES('102','1117','neha','varma','999999999','America''washington','recived','null','null','null','payed')

INSERT [Delivery_Update] ([client_id],[product_ID], [Client_Name], [Client_Last_Name], [Client_Contact],
[Client_Address],[Delivery_stage1],[Delivery_stage2],[Delivery_stage3],[Delivery_stage4],[Client_Payment_Status])
VALUES('103','1118','nisha','varma','999999999','America''washington','null','null','on_the_way','null','payed')

INSERT [Delivery_Update] ([client_id],[product_ID], [Client_Name], [Client_Last_Name], [Client_Contact],
[Client_Address],[Delivery_stage1],[Delivery_stage2],[Delivery_stage3],[Delivery_stage4],[Client_Payment_Status])
VALUES('104','1119','nihal','sharma','999999999','America''washington','null','null','null','deliverd','payed')

CREATE TABLE Product_Details
(
Product_ID int not null,
Product_Type varchar(50),
Product_Bill  varchar(50),
Product_Tax_Status varchar(50),
Product_Quantity  varchar(50),
Plient_Branch_Details  varchar(50),
Product_Recived_Date  date,
Product_Deliverd_Date date,
FOREIGN KEY (Product_ID) REFERENCES Delivery_Update(Product_ID)
);
  

INSERT[Product_details](product_ID,product_type,product_bill,product_tax_status,product_quantity,client_branch_details,product_recived_date,product_deliverd_date)
VALUES('1116',' electronics ','not approved','clear',' 100', 'PUNE', CAST(N'01/01/2022' as date) ,CAST(N'2020-06-12' as date))

INSERT[Product_Details](product_ID,product_type,product_bill,product_tax_status,product_quantity,client_branch_details,product_recived_date,product_deliverd_date)
VALUES('1117',' furniture ','approved','clear',' two containor', 'west bengol', CAST(N'01/01/2022' as date) ,CAST(N'2020-06-12' as date))

INSERT[product_details](product_ID,product_type,product_bill,product_tax_status,product_quantity,client_branch_details,product_recived_date,product_deliverd_date)
VALUES('1118','electronics','approved' ,'clear',' 100', 'PUNE', CAST(N'01/01/2022' as date) ,CAST(N'2020-06-12' as date))

INSERT[product_details](product_ID,product_type,product_bill,product_tax_status,product_quantity,client_branch_details,product_recived_date,product_deliverd_date)
VALUES('1119','costumar goods ','not approved' ,'clear',' 500 box', 'Hydrabad', CAST(N'01/06/2022' as date) ,CAST(N'2020-06-12' as date))



