
  create or replace   view CLASS_TEST.CLASS_TEST.my_second_dbt_model
  
   as (
    -- Use the `ref` function to select from other models

select *
from CLASS_TEST.CLASS_TEST.my_first_dbt_model
where id = 1
  );

