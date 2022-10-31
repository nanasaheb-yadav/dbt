with orders as (
    select 
        id as order_id,
        user_id as customer_id,
        order_date,
        status
    from {{source('jaffle_shop', 'orders')}}

)

select * from orders
{{limit_data_by_days('order_date', 1000)}}