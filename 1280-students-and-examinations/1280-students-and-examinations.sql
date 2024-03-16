select mg.student_id,mg.student_name,mg.subject_name, 
        ifnull(ex.attended_exams,0) as attended_exams
from (
    select * 
    from students st, subjects su) mg
left join (
select student_id,subject_name,count(subject_name) as attended_exams
from examinations
group by student_id,subject_name) ex
on mg.student_id=ex.student_id and mg.subject_name=ex.subject_name
order by mg.student_id,mg.subject_name;

## on절 에서 2개 이상의 조건을 생각 못해서 오래걸림.