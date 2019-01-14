----------------------------------------------------------------------------
--5.1 Returns customer information who have pending payments
----------------------------------------------------------------------------

  SELECT c.customerid, c.lastname, c.firstname, c.dayphone, c.nightphone, pg.thedate, i.invoicenumber, i.paymentamount
  FROM customer c
  LEFT JOIN project pj ON c.customerid = pj.customerid
  RIGHT JOIN progress pg ON pj.projectid = pg.projectid
  RIGHT JOIN invoice i ON pg.invoicenumber = i.invoicenumber
  WHERE i.paymentstatus = 'pend';

----------------------------------------------------------------------------
--5.2 Returns customer information for paid invoices
----------------------------------------------------------------------------

  SELECT c.customerid, c.lastname, c.firstname, c.dayphone, c.nightphone, pg.thedate, i.invoicenumber, i.paymentamount
  FROM customer c
  LEFT JOIN project pj ON c.customerid = pj.customerid
  RIGHT JOIN progress pg ON pj.projectid = pg.projectid
  RIGHT JOIN invoice i ON pg.invoicenumber = i.invoicenumber
  WHERE i.paymentstatus = 'paid';