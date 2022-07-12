with orders as (
    select * from {{ ref('stg_orders') }}
)

select
customerid,
customername,
sum(orderprofit) as profit
from orders
group by customerid, customername