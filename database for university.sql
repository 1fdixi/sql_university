create database university ; 
use university ;
 
-- Create the 'students' table
create table students (
studentID int primary key ,
firstname varchar(255),
lastname varchar(255) not null ,
student_Date_of_Birth int ,
college_id INT ,
  CONSTRAINT fk1_college
    FOREIGN KEY (college_id)
    REFERENCES college(college_id),
address varchar(255),
city varchar(255)
);
insert into students (studentID,firstname,lastname,student_Date_of_Birth,college_id,address,city ) values
(1 , 'fatimaa','ayop',2003,20,'zagzig','elsharqia'),
(2 , 'reem','walid',2003,21,'mansora','Dakahlia'),
(3 , 'basma','sherif',2002,22,'maadi','cairo'),
(4 , 'mostafa','ismael',2001,23,'nasr city','cairo'),
(5, 'mohamed','abdallah',1998,24,'banha','Qalyubia'),
(6 , 'zeiad','mahmoud',1999,25,'ain shams','cairo'),
(7 , 'rofida','ebrahim',2002,26,'abu kaber','elsharqia'),
(8 , 'abdullah','mahmoud',2000,27,'menofia','shabeen El koom'),
(9 , 'eman','ayman',2002,28,'tanta','algarbia'),
(10 , 'othman','saed',2003,29,'alminia','alminia');
select * from students;



-- Create the 'college' table
CREATE TABLE college (
  college_id INT PRIMARY KEY,
  college_name VARCHAR(50),
  location VARCHAR(50)
);

insert into college (college_id,college_name,location ) values
(20,'fcizu', 'zagzaig'),
(21,'fcimans' ,'mansora'),
(22 ,'fcicu', 'cairo') , 
(23,'engineering','cairo'),
(24,'medicinebu' ,'banha'),
(25 ,'medicineasu','ain shams'),
(26,'commerce','halwan'),
(27,'dentistry','menofia'),
(28,'pharmacy', 'tanta'),
(29,'arts', 'alminia');
select * from college; 


-- Create the 'teaching_staff' table 
CREATE TABLE teaching_staff (
  staff_id INT PRIMARY KEY,
  staff_fname  VARCHAR(50),
  staff_lname  VARCHAR(50),
  college_id INT,
  Rankk VARCHAR (255),
  CONSTRAINT fk_college
    FOREIGN KEY (college_id)
    REFERENCES college(college_id)
);

insert into teaching_staff(staff_id,staff_fname ,staff_lname,college_id,Rankk ) values
(1 , 'samah','mohamed',20,'Teaching Assistant'),
(2 , 'reem','samy',21,'Teaching Assistant'),
(3 , 'mahmoud','namouly',22,'Assistant Lecturer'),
(4 , 'rofida','maher',23,'Assistant Professor'),
(5 , 'heba','rashad',24,'Assistant Professor'),
(6, 'manal','yasser',25,'Teaching Assistant'),
(7,'hamza','soluman ' ,26,'Professor Emeritus'),
(8 , 'sara','belal',27,'Assistant Lecturer'),
(9 , 'ibrahim','henawe',28,'Professor Emeritus'),
(10, 'miran','gohary',29,'Assistant Professor');
select * from teaching_staff;


-- Create the 'course' table
CREATE TABLE course (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50),
  staff_id INT,
  CONSTRAINT fk_staff
    FOREIGN KEY (staff_id )
    REFERENCES teaching_staff(staff_id )
);

insert into course(course_id,course_name,staff_id ) values
(1 , 'AI',1),
(2 ,'Anatomy',6),
(3 ,'architecture',4),
(4 ,'english' ,10),
(5 , 'oralmedicine and periodontology' ,8),
(6,' Introduction to Law', 7),
(7 ,'Machine Learning' ,2 ),
(8 , 'Computer Networks', 3 ),
(9 , ' physiology' ,5),
(10 , 'Medicinal Chemistry',9);
select * from course;

