select * from `order`;
select * from product;
select * from supplier_pricing;
select * from customer;

select CUS_NAME, PRO_NAME, ORD_ID, ORD_DATE 
	from product as p, supplier_pricing as sp, `order` as ord, customer as cus
	where cus.CUS_ID = 2 and cus.CUS_ID = ord.CUS_ID and p.PRO_ID = sp.PRO_ID and ord.PRICING_ID = sp.PRICING_ID