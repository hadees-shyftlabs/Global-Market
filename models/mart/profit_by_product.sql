with orders as (
    select * from {{ ref('stg_orders') }}
)

select
productid,
productname,
category,
subcategory,
sum(orderprofit) as profit
from orders
group by productid, productname, category, subcategory