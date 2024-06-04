{{ config(materialized='table')}}

select 
      o.order_id,
      c.first_name,
      c.last_name,
      o.order_date,
      o.total_amount
FROM {{source('CLASS_TES2','ORDERS')}} o
JOIN {{source('CLASS_TES2','CUSTOMER')}} c ON o.customer_id=c.customer_id