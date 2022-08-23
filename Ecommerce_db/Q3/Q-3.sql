select * from `order`
inner join customer on `order`.CUS_ID = customer.CUS_ID having `order`.ORD_AMOUNT>=3000;

select t1.CUS_ID,t1.CUS_NAME,t1.CUS_GENDER,t1.ORD_AMOUNT from (
	select `order`.*, customer.CUS_NAME,customer.CUS_GENDER from `order`
    inner join customer where `order`.CUS_ID =customer.CUS_ID having `order`.ORD_AMOUNT>=3000)
    as t1 group by t1.CUS_ID;
    
select count(t2.CUS_GENDER) as No_of_Customers, t2.CUS_GENDER from (
	select t1.CUS_ID,t1.CUS_NAME,t1.CUS_GENDER,t1.ORD_AMOUNT from
    (
    select `order`.*, customer.CUS_NAME,customer.CUS_GENDER from `order`
    inner join customer where `order`.CUS_ID =customer.CUS_ID having `order`.ORD_AMOUNT>=3000)
    as t1 group by t1.CUS_ID
    )
    as t2 group by t2.CUS_GENDER;
    