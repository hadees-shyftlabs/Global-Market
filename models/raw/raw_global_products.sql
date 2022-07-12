with products as(
    select 
    * 
    from {{ source('globalmart', 'product') }}
)

select * from products