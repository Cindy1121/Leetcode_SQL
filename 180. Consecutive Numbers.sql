# Write your MySQL query statement below
Select Distinct(a.Num) as ConsecutiveNums
From Logs a, Logs b, Logs c
Where b.Id=a.Id+1 
      And c.Id=b.Id+1
      And a.Num=b.Num
      And b.Num=c.Num
