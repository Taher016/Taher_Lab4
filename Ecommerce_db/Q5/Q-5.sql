select * from supplier;
select * from product;
select * from supplier_pricing;

select * from supplier_pricing having count(SUPP_ID)>1;
select * from supplier_pricing group by SUPP_ID having count(SUPP_ID)>1;
   
select sup.SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE from supplier as sup
inner join (
	select * from supplier_pricing group by SUPP_ID having count(SUPP_ID)>1) as sp on sup.SUPP_ID = SP.SUPP_ID;
    