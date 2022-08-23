select final.SUPP_ID, supplier.SUPP_NAME, final.AVERAGE from
		(
        select t2.SUPP_ID, sum(t2.rat_ratstars)/count(t2.rat_ratstars) as AVERAGE from
        (
        select supplier_pricing.SUPP_ID, t1.ORD_ID, t1.RAT_RATSTARS from supplier_pricing
        inner join
			(
            select `order`.PRICING_ID, rating.ORD_ID, rating.RAT_RATSTARS from `order`
            inner join rating on rating.`ORD_ID` = `order`.ORD_ID
            )
            as t1 on t1.PRICING_ID = supplier_pricing.PRICING_ID
		)
        as t2 group by supplier_pricing.SUPP_ID
        )
        as final
        inner join
        supplier where final.SUPP_ID = supplier.SUPP_ID