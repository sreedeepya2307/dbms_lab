use university_profile;

--11. Class teacher wants to find the student name and rollno with the maximum avg in all subjects. ( google sum or avg)
  select name,rollno,max( ( student.math+student.sci+student.eng+student.social+student.sports) /5) as avg from student group by name,rollno;


--12. An inquisitive student wants to find out the names of students whose names have the letter ‘a’ in the second position of their name
  select name from student where instr(name,"a") = 2;

--13. A math faculty wants to focus on the weak students first so he wants to see the names and marks of the students in asc order of marks
  select name, math from student order by math asc; 