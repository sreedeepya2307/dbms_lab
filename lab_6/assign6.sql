use university_profile;

#1. Recreate the original student table using joins.
select * from student INNER JOIN marks_sem1 ON student.rollno=marks_sem1.rollno;

#2. Show only name and sports score from sem1 of all students.
select student.name,marks_sem1.sports as sports_score from student INNER JOIN marks_sem1 ON student.rollno = marks_sem1.rollno;

#3. Show name,math marks, roll no of students who study in a campus offering law.
select student.name,student.rollno,marks_sem1.math as math_marks from student INNER JOIN marks_sem1 ON student.rollno = marks_sem1.rollno INNER JOIN campus ON student.cid = campus.cid where campus.law = 1;

#4. Write left join and right join queries on campus and student table. In the output file simplymention the difference in rows you encountered and what did you see in the extra row for certain columns. Try to understand why that happened
a. select * from student LEFT JOIN campus ON student.cid = campus.cid;

b.select * from student RIGHT JOIN campus ON student.cid = campus.cid;