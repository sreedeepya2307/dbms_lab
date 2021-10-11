use university_profile;

#1. Design a table marks_sem1.
--a. It must contain all marks as seen in the student table.
--b. One way to go about this is to create a copy of the student table and drop columns.
  create table marks_sem1 select rollno,math,sci,eng,social,sports from student order by rollno;
--c. Make roll number the primary key
  alter table marks_sem1 add primary key(rollno);
  desc marks_sem1;

#2. Design a table faculty
--a. Add columns and rows with given constraints
  create table faculty(name varchar(20), fid char(4) unique, subject varchar(20)); 
    insert into faculty values('kakashi','4003','math');
    insert into faculty values('guy','5002','sports');
    insert into faculty values('kurenai','5038','eng');
    desc faculty;
#3. Design a table sem1
--a. Add columns and rows with given constraints
--b. Note - if the “mul” doesn't show up with you run “describe sem1;” then add a few rows and then alter the table
  create table sem1(subj_id char(4) primary key,subject varchar(20),fid char(4),cap int,campus int,index(fid),index(campus));
  	insert into sem1 values('101','math','4003',60,101);
    insert into sem1 values('102','sports','5002',70,101);
    insert into sem1 values('105','eng','5038',60,104);
    desc sem1;
#4. Update campus table
--a. Make cid primary key
  alter table campus add primary key(cid);

#5. Update student table
--a. Drop not required columns (as shown below)
  alter table student drop column math;
  alter table student drop column sci;
  alter table student drop column eng;
  alter table student drop column social;
  alter table student drop column sports;
  alter table student alter column  dob set default '2001-01-01';
  alter table student alter column  yjoin set default 2019;
  alter table student alter column  team set default 'R';
  alter table student alter column  gender set default 'M';

--b. Add fk to rollno to marks_sem1 rollno
alter table student add foreign key ( rollno ) references marks_sem1 (rollno);
--c. Add cid
  alter table student add column cid int;
   update student set cid = 109 where rollno = 33 or rollno = 52 or rollno = 34;
   update student set cid = 101 where rollno = 58 or rollno = 50;
   update student set cid = 110 where rollno = 27 or rollno = 46;
   update student set cid = 109 where rollno = 33 or rollno = 52;
   update student set cid = 104 where rollno = 11 or rollno = 56;
   update student set cid = 113 where rollno = 7;
   update student set cid = 107 where rollno = 21;
--d. Add fk to cid to campus cid
  alter table student add foreign key(cid) references campus(cid);
  desc student;



