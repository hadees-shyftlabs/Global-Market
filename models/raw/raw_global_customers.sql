with customers as(
    select 
    * 
    from {{ source('globalmart', 'customers') }}
)

select * from customers