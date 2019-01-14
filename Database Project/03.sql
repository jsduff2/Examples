----------------------------------------------------------------------------
--3.1 Find materials that cost more than the average material cost
----------------------------------------------------------------------------
SELECT m.itemid, m.description, md.unitprice
FROM materials m JOIN materialsorderdetail md
ON m.itemid = md.productnumber
WHERE md.unitprice > (select avg(md.unitprice)
		      from materialsorderdetail md);

----------------------------------------------------------------------------
--3.2 Find materials that cost less than the average material cost
----------------------------------------------------------------------------
SELECT m.itemid, m.description, md.unitprice
FROM materials m JOIN materialsorderdetail md
ON m.itemid = md.productnumber
WHERE md.unitprice < (select avg(md.unitprice)
		      from materialsorderdetail md);

----------------------------------------------------------------------------
--3.3 Find materials that equal the average material cost
----------------------------------------------------------------------------
SELECT m.itemid, m.description, md.unitprice
FROM materials m JOIN materialsorderdetail md
ON m.itemid = md.productnumber
WHERE md.unitprice = (select avg(md.unitprice)
		      from materialsorderdetail md);