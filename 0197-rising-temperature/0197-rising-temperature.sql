SELECT w1.id
FROM Weather w1, Weather w2
WHERE DATEDIFF(w1.recordDate, w2.recordDate) = 1 AND w1.temperature > w2.temperature;

# self join + datediff function 
# datediff(a,b,c)
# a : 구분자 ex) day, dd
# b : start_date
# c : end_date
