select category.CAT_ID, category.CAT_NAME, PRO_NAME, MIN(t2.MIN_PRICE) as MIN_PRICE from category
inner join (
select product.CAT_ID, product.PRO_NAME, t1.* from product
	inner join (
		select PRO_ID, MIN(SUPP_PRICE) as MIN_PRICE from SUPPLIER_PRICING group by PRO_ID) as t1
        where t1.PRO_ID = product.PRO_ID
           )
           as t2 where t2.CAT_ID = category.CAT_ID
group by t2.CAT_ID;
        
