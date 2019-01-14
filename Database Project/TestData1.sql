--ITK 378
-- Team Thumbs Up Test Data #1
-- Mindy Chancellor, Jermaine Tate, Jason Duffield, Tom Grant

delete from bills;
delete from employee;
delete from inventory;
delete from mechanic;
delete from orders;
delete from standardservices;
delete from vehicle;
delete from vendor;
delete from workorder;
delete from workorderdetails;

----------------------------------------------------
--  Insert data into Bills table
----------------------------------------------------


INSERT INTO Bills (BillsID, Billing_Address, City, State, Zipcode, Phone_Num, Bill_Amount, Due_Date, Date_Paid)
   VALUES            ('1234567', '123 Center St', 'Bloomington', 'IL', '61701', '8281487', '200.00', '27-May-2008', '26-May-2008');

INSERT INTO Bills (BillsID, Billing_Address, City, State, Zipcode, Phone_Num, Bill_Amount, Due_Date, Date_Paid)
   VALUES            ('1238695', '345 North St', 'Normal', 'IL', '61761', '3859867', '450.00', '14-Mar-2008', '12-Mar-2008');

INSERT INTO Bills (BillsID, Billing_Address, City, State, Zipcode, Phone_Num, Bill_Amount, Due_Date, Date_Paid)
   VALUES           ('8375623', '34 Clearwater Ave', 'Bloomington', 'IL', '61704', '2987564', '1000.00', '12-Sep-2008', '05-Sep-2008');

INSERT INTO Bills (BillsID, Billing_Address, City, State, Zipcode, Phone_Num, Bill_Amount, Due_Date, Date_Paid)
   VALUES             ('0006574', '8 South St', 'Carlock', 'IL', '12345', '3104567', '120.00', '14-Dec-2007', '12-Dec-2007');

INSERT INTO Bills (BillsID, Billing_Address, City, State, Zipcode, Phone_Num, Bill_Amount, Due_Date, Date_Paid)
   VALUES           ('1976647', '112 Cherry St', 'Normal', 'IL', '61761', '2124445', '850.00', '21-Jun-2008', '19-Jun-2008');

INSERT INTO Bills (BillsID, Billing_Address, City, State, Zipcode, Phone_Num, Bill_Amount, Due_Date, Date_Paid)
   VALUES            ('9994562', '1 37th St', 'Hudson', 'IL', '98765', '1285769', '700.00', '01-Oct-2008', '30-Oct-2008');

INSERT INTO Bills (BillsID, Billing_Address, City, State, Zipcode, Phone_Num, Bill_Amount, Due_Date, Date_Paid)
   VALUES            ('4448765', '1301 13th St', 'Bloomington', 'IL', '61704', '2225555', '1200.00', '01-Dec-2008', null);

INSERT INTO Bills (BillsID, Billing_Address, City, State, Zipcode, Phone_Num, Bill_Amount, Due_Date, Date_Paid)
   VALUES            ('7654999', '2223 Ensign Dr', 'Normal', 'IL', '61701', '4547777', '600.00', '05-Dec-2008', null);

INSERT INTO Bills (BillsID, Billing_Address, City, State, Zipcode, Phone_Num, Bill_Amount, Due_Date, Date_Paid)
   VALUES            ('2222267', '30 Fell Ave', 'Carlock', 'IL', '12345', '8765676', '950.00', '05-Jul-2008', '01-Jul-2008');

INSERT INTO Bills (BillsID, Billing_Address, City, State, Zipcode, Phone_Num, Bill_Amount, Due_Date, Date_Paid)
   VALUES            ('5555432', '87 Front St', 'Bloomington', 'IL', '61701', '7778765', '300.00', '14-Apr-2008', '09-Apr-2008');

----------------------------------------------------
--  Insert data into Employee table
----------------------------------------------------

INSERT INTO Employee (EmployeeID, Fname, Lname, Address, City, State, Zipcode, Phone_Num, Hrs_Wrkd, Pay)
   VALUES           ('8843572', 'Mitch', 'Rapp', '99 Norwood Ave', 'Bloomington', 'IL', '61701', '8752355', '25', '225.00');

INSERT INTO Employee (EmployeeID, Fname, Lname, Address, City, State, Zipcode, Phone_Num, Hrs_Wrkd, Pay)
   VALUES            ('6533808', 'George', 'Thomas', '30 Center St', 'Carlock', 'IL', '12345', '8087812', '39', '898.00');

INSERT INTO Employee (EmployeeID, Fname, Lname, Address, City, State, Zipcode, Phone_Num, Hrs_Wrkd, Pay)
   VALUES            ('1235555', 'Bill', 'White', '6 School Blvd.', 'Normal', 'IL', '61761', null, null,'950.00');

INSERT INTO Employee (EmployeeID, Fname, Lname, Address, City, State, Zipcode, Phone_Num, Hrs_Wrkd, Pay)
   VALUES            ('1235554', 'Gabe', 'Williams', '45 Kraft Cir.', 'Hudson', 'IL', '98765', null
, null,'870.00');

INSERT INTO Employee (EmployeeID, Fname, Lname, Address, City, State, Zipcode, Phone_Num, Hrs_Wrkd, Pay)
   VALUES            ('7777779', 'Tony', 'Harper', '1112 Cherry St', 'Normal', 'IL', '61761', '9098823', '10', '780.00');

INSERT INTO Employee (EmployeeID, Fname, Lname, Address, City, State, Zipcode, Phone_Num, Hrs_Wrkd, Pay)
   VALUES            ('2223232', 'David', 'Sisco', '87 Township Ave', 'Clinton', 'IL', '56456', '8786765', '30', '340.00');

INSERT INTO Employee (EmployeeID, Fname, Lname, Address, City, State, Zipcode, Phone_Num, Hrs_Wrkd, Pay)
   VALUES            ('4444323', 'Robert', 'Bell', '564 Howard Blvd', 'Bloomington', 'IL', '61704', null, null, '300.00');

INSERT INTO Employee (EmployeeID, Fname, Lname, Address, City, State, Zipcode, Phone_Num, Hrs_Wrkd, Pay)
   VALUES           ('7776543', 'Chris', 'Clinton', '765 Normal Ave.', 'Normal', 'IL', '61761', '9998788', '32', '1350.00');

INSERT INTO Employee (EmployeeID, Fname, Lname, Address, City, State, Zipcode, Phone_Num, Hrs_Wrkd, Pay)
   VALUES            ('1235556', 'Conner', 'Taylor', '2343 Washington Ave.', 'Normal', 'IL', '61761', '6347543', '1', '765.00');

INSERT INTO Employee (EmployeeID, Fname, Lname, Address, City, State, Zipcode, Phone_Num, Hrs_Wrkd, Pay)
   VALUES            ('2223456', 'Adam', 'Smith', '123 Town Rd', 'Hudson', 'IL', '98765', '7786757', '39', '600.00');

----------------------------------------------------
--  Insert data into Mechanic table
----------------------------------------------------

INSERT INTO Mechanic (Mech_Num, EmployeeID, Specialty)
   VALUES            ('22234', '2223456', 'Oil Change');

INSERT INTO Mechanic (Mech_Num, EmployeeID, Specialty)
   VALUES            ('22235', '1235555', 'Oil Change, Tire Rotation');

INSERT INTO Mechanic (Mech_Num, EmployeeID, Specialty)
   VALUES            ('22236', '7776543', 'Oil Change, Tire Rotation, Transmission');

INSERT INTO Mechanic (Mech_Num, EmployeeID, Specialty)
   VALUES            ('22237', '4444323', 'Oil Change, Tire Rotation, Transmission');

INSERT INTO Mechanic (Mech_Num, EmployeeID, Specialty)
   VALUES            ('22238', '2223232', 'Oil Change, Tire Rotation');

INSERT INTO Mechanic (Mech_Num, EmployeeID, Specialty)
   VALUES            ('22239', '7777779', 'Oil Change');

INSERT INTO Mechanic (Mech_Num, EmployeeID, Specialty)
   VALUES            ('22240', '1235555', 'Oil Change, Tire Rotation, Transmission, Engine');

INSERT INTO Mechanic (Mech_Num, EmployeeID, Specialty)
   VALUES            ('22241', '1235555', 'Oil Change, Tire Rotation, Transmission, Engine');

INSERT INTO Mechanic (Mech_Num, EmployeeID, Specialty)
   VALUES            ('22242', '6533808', 'Oil Change, Tire Rotation, Transmission, Engine');

INSERT INTO Mechanic (Mech_Num, EmployeeID, Specialty)
   VALUES            ('22243', '8843572', 'Oil Change, Tire Rotation');

----------------------------------------------------
--  Insert data into Inventory table
----------------------------------------------------


INSERT INTO Inventory (Inventory_Num, Price, OrderID, Item_Name, Quantity_OnHand, Quantity_Ordered)
   VALUES            ('12345678', '1000.00', '09876543', 'Transmission', '2', '1');

INSERT INTO Inventory (Inventory_Num, Price, OrderID, Item_Name, Quantity_OnHand, Quantity_Ordered)
   VALUES            ('1234569', '8.99', '09876542', 'Qt. Oil', '500', '1');

INSERT INTO Inventory (Inventory_Num, Price, OrderID, Item_Name, Quantity_OnHand, Quantity_Ordered)
   VALUES            ('1234560', '100.00', '09876541', 'Sway Bars', '2', '12');

INSERT INTO Inventory (Inventory_Num, Price, OrderID, Item_Name, Quantity_OnHand, Quantity_Ordered)
   VALUES            ('12345671', '225.00', '09876540', 'Fuel Pump', '4', '2');

INSERT INTO Inventory (Inventory_Num, Price, OrderID, Item_Name, Quantity_OnHand, Quantity_Ordered)
   VALUES            ('12345672', '850.00', '09876549', 'Fuse Box', '1', '5');

INSERT INTO Inventory (Inventory_Num, Price, OrderID, Item_Name, Quantity_OnHand, Quantity_Ordered)
   VALUES            ('12345673', '150.00', '09876548', 'Oil Pump', '15', '1');

INSERT INTO Inventory (Inventory_Num, Price, OrderID, Item_Name, Quantity_OnHand, Quantity_Ordered)
   VALUES            ('12345674', '700.00', '09876547', 'Header', '1', '2');

INSERT INTO Inventory (Inventory_Num, Price, OrderID, Item_Name, Quantity_OnHand, Quantity_Ordered)
   VALUES            ('12345675', '55.00', '09876546', 'Gasket', '300', '25');

INSERT INTO Inventory (Inventory_Num, Price, OrderID, Item_Name, Quantity_OnHand, Quantity_Ordered)
   VALUES            ('12345676', '15.00', '09876545', 'Oil Filter', '75', '25');

INSERT INTO Inventory (Inventory_Num, Price, OrderID, Item_Name, Quantity_OnHand, Quantity_Ordered)
   VALUES            ('12345677', '300.00', '09876544', 'Tire', '36', '20'); 

----------------------------------------------------
--  Insert data into Orders table
----------------------------------------------------


INSERT INTO Orders (OrderID, Price, Vendor_Num)
   VALUES            ('09876544', '300.00', '56787');

INSERT INTO Orders (OrderID, Price, Vendor_Num)
   VALUES            ('09876545', '15.00', '56786');

INSERT INTO Orders (OrderID, Price, Vendor_Num)
   VALUES            ('09876546', '55.00', '56786');

INSERT INTO Orders (OrderID, Price, Vendor_Num)
   VALUES            ('09876547', '700.00', '56785');

INSERT INTO Orders (OrderID, Price, Vendor_Num)
   VALUES            ('09876548', '150.00', '56784');

INSERT INTO Orders (OrderID, Price, Vendor_Num)
   VALUES            ('09876549', '850.00', '56783');

INSERT INTO Orders (OrderID, Price, Vendor_Num)
   VALUES            ('09876540', '225.00', '56782');

INSERT INTO Orders (OrderID, Price, Vendor_Num)
   VALUES            ('09876541', '100.00', '56781');

INSERT INTO Orders (OrderID, Price, Vendor_Num)
   VALUES            ('09876542', '8.99', '56780');

INSERT INTO Orders (OrderID, Price, Vendor_Num)
   VALUES            ('09876543', '1000.00', '56789');

----------------------------------------------------
--  Insert data into StandardServices table
----------------------------------------------------


INSERT INTO StandardServices (Service_Code, Service_Type, Service_Amount, Description)
   VALUES            ('61', 'Oil Change', '15.99', 'Change the oil and oil filter');

INSERT INTO StandardServices (Service_Code, Service_Type, Service_Amount, Description)
   VALUES            ('60', 'Tire Rotation', '10.99', 'Rotate all four tires');

INSERT INTO StandardServices (Service_Code, Service_Type, Service_Amount, Description)
   VALUES            ('59', 'Transmission Flush', '49.99', 'Clean and Flush the Transmission');

INSERT INTO StandardServices (Service_Code, Service_Type, Service_Amount, Description)
   VALUES            ('58', 'Air Filter Change',  '29.99', 'Change the Air Filter');

----------------------------------------------------
--  Insert data into Vehicle table
----------------------------------------------------


INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('1DGHTE3456768MN89', 'Pontiac', 'G8', '2009', '9873457', 'Steve', 'Nelson', null, '500');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('5GHT5J678DF3R4578', 'Chevrolet', 'Monte Carlo', '1999', '5972367', null, null, 'State Farm', '71354');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('7V456TSF3456HM789', null, null, '2007', '6785GHT', 'Carrie', 'Fulton', 
null, '50067');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('867TGDW54SAD67YU2', 'Ford', 'Taurus', '2004', '43rtgty', null, null, 'Allstate', '627010');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('797544GHTFE75698I', null, null, '2008', '1234567', 'George', 'Bryan', null, '17452');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('765BNUY2341HUSW78', null, null, '2003', '78901RG', null, null, 'Allstate', '62701');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('55ASW12345H4NE906', 'Buick', 'Lasabre', '2001', 'asdf123', 'Pam', 'Smith', null, '98888');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('96543HRSDEFTG5644', null, null, '2008', 'fgh432p', null, null, 'State Farm', '39075');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('9087UNG6754UTWST5', 'Chevrolet', 'S10', '2005', 'er3214d', null, null, null, '65701');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('5UTRS345F4BU3210H', 'Ford', 'F150', '2002', 'er321ew', null, null, 'AB Construction', '62701');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('64HUSW345W3WU890M', null, null, '2008', 'et4214d','Amber', 'Grey',
 null, '44890');

INSERT INTO Vehicle (VehicleID, Make, Model, Year, License_Num, Owner_Fname, Owner_Lname, Corp_Name, Mileage)
   VALUES            ('71234VBU67TW34DSI', 'Dodge', 'Ram', '1998','er32234', null, null,'AB Construction', '110624');

----------------------------------------------------
--  Insert data into Vendor table
----------------------------------------------------


INSERT INTO Vendor (Vendor_Num, Vendor_Name, Address, City, State, Zipcode, Phone_Num, BillsID)
   VALUES            ('56787', 'NAPA', '101 Green St', 'Springfield', 'IL', '62701', '8885624', '1238695');

INSERT INTO Vendor (Vendor_Num, Vendor_Name, Address, City, State, Zipcode, Phone_Num, BillsID)
   VALUES            ('56781', 'Ameren IP', '742 Taylor Ave', 'Joliet', 'IL', '63741', '8388971', '9994562');

INSERT INTO Vendor (Vendor_Num, Vendor_Name, Address, City, State, Zipcode, Phone_Num, BillsID)
   VALUES            ('56785', 'Verizon', '2 Bluebell Terrace', 'Springfield', 'IL', '62701', '5678765', '7654999');

INSERT INTO Vendor (Vendor_Num, Vendor_Name, Address, City, State, Zipcode, Phone_Num, BillsID)
   VALUES            ('56780', 'Advanced Auto', '7 Cardinal St', 'Morton', 'IL', '67791', '7895434', '2222267');

INSERT INTO Vendor (Vendor_Num, Vendor_Name, Address, City, State, Zipcode, Phone_Num, BillsID)
   VALUES            ('56789', 'Nicor', '4 Power Blvd', 'Peoria', 'IL', '64731', '1238765', '5555432');

----------------------------------------------------
--  Insert data into WorkOrder table
----------------------------------------------------

INSERT INTO WorkOrder (Wrk_Order_Num, Order_Date, Order_Time)
   VALUES            ('456789', '23-June-2008', '0800');

INSERT INTO WorkOrder (Wrk_Order_Num, Order_Date, Order_Time)
   VALUES            ('456780', '11-Dec-2007', '1230');

INSERT INTO WorkOrder (Wrk_Order_Num, Order_Date, Order_Time)
   VALUES            ('456781', '15-Apr-2006', '0230');

INSERT INTO WorkOrder (Wrk_Order_Num, Order_Date, Order_Time)
   VALUES            ('456782', '20-Nov-2007', '0410');

INSERT INTO WorkOrder (Wrk_Order_Num, Order_Date, Order_Time)
   VALUES            ('456783', '06-Jan-2008', '0930');

INSERT INTO WorkOrder (Wrk_Order_Num, Order_Date, Order_Time)
   VALUES            ('456784', '27-Nov-2008', '1045');

INSERT INTO WorkOrder (Wrk_Order_Num, Order_Date, Order_Time)
   VALUES            ('456785', '01-Sep-2007', '1200');

INSERT INTO WorkOrder (Wrk_Order_Num, Order_Date, Order_Time)
   VALUES            ('456786', '14-Feb-2006', '0330');

INSERT INTO WorkOrder (Wrk_Order_Num, Order_Date, Order_Time)
   VALUES            ('456787', '21-May-2007', '0200');

INSERT INTO WorkOrder (Wrk_Order_Num, Order_Date, Order_Time)
   VALUES            ('456788', '28-May-2007', '0915');

----------------------------------------------------
--  Insert data into WorkOrder table
----------------------------------------------------

INSERT INTO WorkOrderDetails (Wrk_Order_Num, Service_Code, Mech_Num)
   VALUES            ('456788', '61', '22234');

INSERT INTO WorkOrderDetails (Wrk_Order_Num, Service_Code, Mech_Num)
   VALUES            ('456788', '60', '22235');

INSERT INTO WorkOrderDetails (Wrk_Order_Num, Service_Code, Mech_Num)
   VALUES            ('456788', '59', '22236');

INSERT INTO WorkOrderDetails (Wrk_Order_Num, Service_Code, Mech_Num)
   VALUES            ('456788', '58', '22237');

INSERT INTO WorkOrderDetails (Wrk_Order_Num, Service_Code, Mech_Num)
   VALUES            ('456788', '61', '22238');

INSERT INTO WorkOrderDetails (Wrk_Order_Num, Service_Code, Mech_Num)
   VALUES            ('456788', '60', '22239');

INSERT INTO WorkOrderDetails (Wrk_Order_Num, Service_Code, Mech_Num)
   VALUES            ('456788', '59', '22240');

INSERT INTO WorkOrderDetails (Wrk_Order_Num, Service_Code, Mech_Num)
   VALUES            ('456788', '58', '22241');

INSERT INTO WorkOrderDetails (Wrk_Order_Num, Service_Code, Mech_Num)
   VALUES            ('456788', '61', '22242');

INSERT INTO WorkOrderDetails (Wrk_Order_Num, Service_Code, Mech_Num)
   VALUES            ('456788', '60', '22243');