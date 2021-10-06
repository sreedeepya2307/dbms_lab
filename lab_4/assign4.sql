SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

use university_profile;

-- 1. For a certain event only students who belong to team R or are females are allowed to participate. Find the list of students eligible. (Union)
   select name, rollno from student where team = 'R' UNION select name, rollno from student where gender = 'F';

-- 2. Display count of students in each team. (group by)
   select team, count(rollno) as student_count from student group by team;

-- 3. Display the average math score of boys from each team. (group by)
   select team, avg(math) as math_avg_of_boys from student where gender = 'M' group by team;

-- 4. Display data in the following format using Group By and Order By
   select * from student group by gender,team order by team asc, gender desc;

-- 5. Use the group by followed by order by followed by limit to show ‘team’ and ‘avg(sci)’ columns of the top two teams with highest average in science.
   select team, avg(sci) from student group by team order by avg(sci) limit 0,2;
