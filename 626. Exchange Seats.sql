# Write your MySQL query statement below
Select 
    (case when (Select max(id) from seat) % 2 = 1 
                and 
                id = (select max(id) from seat) 
          then id
          when id % 2 = 1
          then id + 1
          else id - 1
     end) as id, student
From seat
Order by id
