
  
    

        create or replace transient table CLASS_TEST.CLASS_TEST.orders_with_customer
         as
        (

select 
      o.order_id,
      c.first_name,
      c.last_name,
      o.order_date,
      o.total_amount
FROM CLASS_TEST.CLASS_TEST.ORDERS o
JOIN CLASS_TEST.CLASS_TEST.CUSTOMER c ON o.customer_id=c.customer_id
        );
      
  