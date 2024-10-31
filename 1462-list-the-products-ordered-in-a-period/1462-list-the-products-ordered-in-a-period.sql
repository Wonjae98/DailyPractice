# Write your MySQL query statement below

 with unit_cnt as (
select product_id,sum(unit) as unit_sum
    from orders
    where year(order_date)=2020 and 
            month(order_date)=2 
    group by 1
    having sum(unit)>=100)
select p.product_name,uc.unit_sum as unit
from products p inner join unit_cnt uc
on p.product_id=uc.product_id
