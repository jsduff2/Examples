----------------------------------------------------------------------------
--1.1 Search for average total cost of a rental from supplier 98889 and 98888. 
----------------------------------------------------------------------------
	column total_average_cost format $9999.99
	select avg( erd.rate * erd.hoursrented) as Total_Average_Cost
	from equipmentrentaldetail erd join equipmentrentalorder ero
	on erd.ordernumber = ero.ordernumber  
	where ero.supplierid in ('98889', '98888');

----------------------------------------------------------------------------
--1.2 Search for average total cost of a rental from supplier 88870 and 98888. 
----------------------------------------------------------------------------
	column total_average_cost format $9999.99
	select avg( erd.rate * erd.hoursrented) as Total_Average_Cost
	from equipmentrentaldetail erd join equipmentrentalorder ero
	on erd.ordernumber = ero.ordernumber  
	where ero.supplierid in ('88870', '98888');

----------------------------------------------------------------------------
--1.3 Search for average total cost of a rental from supplier 88870 and 88872. 
----------------------------------------------------------------------------
	column total_average_cost format $9999.99
	select avg( erd.rate * erd.hoursrented) as Total_Average_Cost
	from equipmentrentaldetail erd join equipmentrentalorder ero
	on erd.ordernumber = ero.ordernumber  
	where ero.supplierid in ('88870', '88872');