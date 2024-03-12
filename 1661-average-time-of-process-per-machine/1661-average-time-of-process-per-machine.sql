## self join + where 조건절을 이용
# ROUND 함수
# Group by + AVG 함수
SELECT a.machine_id,ROUND(AVG(b.timestamp-a.timestamp),3) as processing_time
FROM Activity a, 
     Activity b
WHERE 
    a.machine_id=b.machine_id
    AND
    a.process_id=b.process_id
    AND
    a.activity_type='start'
    AND
    b.activity_type='end'

group by machine_id;