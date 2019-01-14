----------------------------------------------------------------------------
--4.1 View equipment costs and total equipment cost for projects of
--customer 12349
----------------------------------------------------------------------------
COLUMN cost FORMAT 99999.99
BREAK ON projectid
COMPUTE SUM OF cost ON projectid
SELECT projectid, EquipmentID, type, hoursneeded, hourlycharge, 
	(hoursneeded * hourlycharge) cost 
FROM project JOIN EquipmentUsed USING (projectid)
JOIN equipment USING (equipmentID)
WHERE customerid = '12349'
ORDER BY projectid;

----------------------------------------------------------------------------
--4.2 View equipment costs and total equipment cost for projects of
--customer 12347
----------------------------------------------------------------------------
COLUMN cost FORMAT 99999.99
BREAK ON projectid
COMPUTE SUM OF cost ON projectid
SELECT projectid, EquipmentID, type, hoursneeded, hourlycharge, 
	(hoursneeded * hourlycharge) cost 
FROM project JOIN EquipmentUsed USING (projectid)
JOIN equipment USING (equipmentID)
WHERE customerid = '12347'
ORDER BY projectid;

----------------------------------------------------------------------------
--4.3 View equipment costs and total equipment cost for projects of
--customer 12360 (does not exist)
----------------------------------------------------------------------------
COLUMN cost FORMAT 99999.99
BREAK ON projectid
COMPUTE SUM OF cost ON projectid
SELECT projectid, EquipmentID, type, hoursneeded, hourlycharge, 
	(hoursneeded * hourlycharge) cost 
FROM project JOIN EquipmentUsed USING (projectid)
JOIN equipment USING (equipmentID)
WHERE customerid = '12360'
ORDER BY projectid;
