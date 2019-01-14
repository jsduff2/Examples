
-------------------------------------------
--2.1 Average spent per materials supplier
-------------------------------------------

  SELECT mo.supplierid, s.companyname, avg(mod.unitprice*mod.quantity*(1-mod.discountamount)) as Average_Cost
  FROM supplier s
  LEFT JOIN materialsorder mo ON s.supplierid = mo.supplierid
  JOIN materialsorderdetail mod ON mo.ordernumber = mod.ordernumber
  GrOUP BY mo.supplierid, s.companyname;