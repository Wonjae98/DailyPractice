(select employee_id,department_id
from employee
group by 1
having count(1)=1)
union all
(select employee_id,department_id
from employee
where primary_flag='Y')