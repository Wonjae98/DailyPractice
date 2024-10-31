with tmp as (select reports_to as reports_id,
             count(1) as reports_count,
             avg(age) as average_age
 from employees 
 where reports_to is not null            
 group by 1
)
select e.employee_id,e.name,t.reports_count,round(t.average_age,0) as average_age
from employees e inner join tmp t
on e.employee_id=t.reports_id
order by 1
