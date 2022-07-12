with orders as(
    select 
    * 
    from {{ source('globalmart', 'orders') }}
)

select * from orders
 