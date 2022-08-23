select prod.PRO_ID, prod.PRO_NAME from `order` as ord
	inner join supplier_pricing as sp on sp.PRICING_ID = ord.PRICING_ID
    inner join product as prod on prod.PRO_ID = sp.PRO_ID where ord.ORD_DATE>'2021-10-05';