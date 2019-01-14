--Milestone 4
--
--Mindy Chancellor, Jermaine Tate, Tom Grant, Jason Duffield
--
--Create Tables
--
-------------------------------------------
--
--Drop Tables
--
   Drop table Bills cascade constraints;
   Drop table Employee cascade constraints;
   Drop table Inventory cascade constraints;
   Drop table Mechanic cascade constraints;
   Drop table Orders cascade constraints;
   Drop table StandardServices cascade constraints;
   Drop table Vehicle cascade constraints;
   Drop table Vendor cascade constraints;
   Drop table WorkOrder cascade constraints;
   Drop table WorkOrderDetails cascade constraints;
--
-------------------------------------------
--
--Create Tables
--
--
-------------------------------------------
--Bills Table
-------------------------------------------
--	
 Create table Bills(
   BillsID	       Char(7)         Primary Key,
   Billing_Address     Char(30)        not null,
   City		       Char(20)        not null,
   State	       Char(2)	       not null,
   Zipcode             Char(5)         not null,
   Phone_Num           Char(7)         not null,
   Bill_Amount         Number(6,2)     not null,
   Due_Date            Date            not null,
   Date_Paid           Date);

   alter table Bills
   add constraint amount_csc check (bill_amount >=0);

   create index Due_Date_idx
   on Bills(Due_Date);

--
-------------------------------------------
--Employee Table
-------------------------------------------
--
 Create table Employee(
   EmployeeID          Integer      primary key,
   Fname               Char(15)        not null,
   Lname               Char(15)        not null,
   Address             Char(30)        not null,
   City                Char(20)        not null,
   State               Char(2)         not null,
   Zipcode             Char(5)         not null,
   Phone_Num           Char(7),        
   Hrs_Wrkd            Integer, 
   Pay                 Number(10,2));

   alter table Employee
    add constraint emp_pay check (pay > 0);

   alter table Employee
   add constraint max_hours check (Hrs_Wrkd > 0 and Hrs_Wrkd < 40);

   create index Employee_Name_idx
   on Employee(Fname,Lname);

--
-------------------------------------------
--Mechanic Table
-------------------------------------------
--
 Create table Mechanic(
   Mech_Num            Integer      primary key,
   EmployeeID          Integer      not null,
   Specialty           Char(256));

  create index EmployeeID_idx
  on Mechanic(EmployeeID);

--
--
-------------------------------------------
--Inventory Table
-------------------------------------------
--
 Create table Inventory(
   Inventory_Num       Char(8)         Primary key,
   Price               Number(6,2)     not null,
   OrderID             Char(8)         not null,
   Item_Name           Char(25)        not null,
   Quantity_Onhand     Integer         not null,
   Quantity_Ordered    Integer         not null);

   alter table Inventory
   add constraint min_ordered check (quantity_ordered >=1);
 
   create index OrderId_idx
   on Inventory(OrderID);

--
-------------------------------------------
--Orders Table
-------------------------------------------
--
 Create table Orders(  
   OrderID             Char(8)         primary key,
   Price               Number(6,2)     not null,
   Vendor_Num          Char(5)         not null);

   create index Vendor_Num_idx
   on Orders(Vendor_Num);

--
--
-------------------------------------------
--StandardServices Table
-------------------------------------------
--
 Create table StandardServices(
   Service_Code        Char(2)         primary key,
   Service_Type        Char(20)        not null,
   Service_Amount      Number(6,2)     not null,
   Description         Char(256));

   alter table StandardServices
    add constraint serv_amount check (Service_Amount >= 0);
--  
--
-------------------------------------------
--Vehicle Table
-------------------------------------------
--
 Create table Vehicle(
   VehicleID           Char(17)        primary key,
   Make                Char(15),        
   Model               Char(15),
   Year                Char(4)         not null,
   License_Num         Char(8),
   Owner_Fname         Char(15),
   Owner_Lname         Char(15),
   Corp_Name           Char(15),
   Mileage             Integer         not null);

   create index Owner_Name_idx
     on Vehicle(Owner_Fname, Owner_Lname);
  
  create index Corp_Name_idx
    on Vehicle(Corp_Name);
--
-------------------------------------------
--Vendor Table
-------------------------------------------
--
 Create table Vendor(
   Vendor_Num          Char(5)         primary key,
   Vendor_Name         Char(25)        not null,
   Address             Char(30)        not null,
   City                Char(20)        not null,
   State               Char(2)         not null,
   Zipcode             Char(5)         not null,
   Phone_Num           Char(7)         not null,
   BillsID             Char(7));

  create index BillsID_idx
   on Vendor(BillsID);
--
--
-------------------------------------------
--WorkOrder Table
-------------------------------------------
--
 Create table WorkOrder(
   Wrk_Order_Num       Integer         primary key,
   Order_Date          Date            not null,
   Order_Time	       Integer );

--
--
-------------------------------------------
--WorkOrderDetails
-------------------------------------------
--
 Create table WorkOrderDetails(
   Wrk_Order_Num       Integer         not null,
   Service_Code        Char(2)         not null,
   Mech_Num            Integer         not null);

 create index Wrk_Order_Num_idx
    on WorkOrderDetails(Wrk_Order_Num);
  
  create index Service_Code_idx
    on WorkOrderDetails(Service_Code);
 
  create index Mech_Num
    on WorkOrderDetails(Mech_Num);
--
--
-------------------------------------------
--Grants
-------------------------------------------

 grant all on Bills to itk3780106;

 grant all on Bills to itk3780119;

 grant all on Bills to itk3780109;

 grant all on Bills to itk3780115;

 grant all on Employee to itk3780106;

 grant all on Employee to itk3780119;

 grant all on Employee to itk3780109;

 grant all on Employee to itk3780115;

 grant all on Inventory to itk3780106;

 grant all on Inventory to itk3780119;

 grant all on Inventory to itk3780109;

 grant all on Inventory to itk3780115;

 grant all on Mechanic to itk3780106;

 grant all on Mechanic to itk3780119;

 grant all on Mechanic to itk3780109;

 grant all on Mechanic to itk3780115;

 grant all on Orders to itk3780106;

 grant all on Orders to itk3780119;

 grant all on Orders to itk3780109;

 grant all on Orders to itk3780115;

 grant all on StandardServices to itk3780106;

 grant all on StandardServices to itk3780119;

 grant all on StandardServices to itk3780109;

 grant all on StandardServices to itk3780115;

 grant all on Vehicle to itk3780106;

 grant all on Vehicle to itk3780119;

 grant all on Vehicle to itk3780109;

 grant all on Vehicle to itk3780115;

 grant all on Vendor to itk3780106;

 grant all on Vendor to itk3780119;

 grant all on Vendor to itk3780109;

 grant all on Vendor to itk3780115;

 grant all on WorkOrder to itk3780106;

 grant all on WorkOrder to itk3780119;

 grant all on WorkOrder to itk3780109;

 grant all on WorkOrder to itk3780115;

 grant all on WorkOrderDetails to itk3780106;

 grant all on WorkOrderDetails to itk3780119;

 grant all on WorkOrderDetails to itk3780109;

 grant all on WorkOrderDetails to itk3780115;
