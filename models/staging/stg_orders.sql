select
-- from orders table
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
(o.ordersellingprice -o.ordercostprice) as orderprofit,

-- from customers table
c.customerid,
c.customername,
c.segment,
c.country,

-- from products table
p.productid,
p.category,
p.productname,
p.subcategory
from {{ ref('raw_global_orders') }} as o
left join {{ ref('raw_global_customers') }} as c
on o.customerid = c.customerid
left join {{ ref('raw_global_products') }} as p
on o.productid = p.productid