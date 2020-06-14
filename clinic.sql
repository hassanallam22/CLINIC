
create database clinic ;
use clinic ;
create table clinic (
clinic_id INT NOT NULL PRIMARY KEY  ,
clinic_use varchar(50) NULL ,
number_clinic int null ,
Price int NULL 
);
select *from clinic;

create table patient (
patient_id int not null primary key ,
patient_Name varchar(50) null ,
patient_Phone int null ,
patient_Address varchar(50) null ,
clinic_id int not null
);
select *from patient ;



create table doctors (
doctors_id INT NOT NULL PRIMARY KEY ,
doctors_name varchar(50) null , 
doctors_Phone int null ,
specialties varchar(50) null ,
clinic_id int not null ,
patient_id int not null ,
foreign key  (clinic_id) References clinic (clinic_id) ,
foreign key  (patient_id ) References patient (patient_id ) 
);
select *from doctors ;


 
insert into clinic(clinic_id, clinic_use, number_clinic, price)
values(4650,'dental clinic',4,100 );


insert into clinic(clinic_id, clinic_use, number_clinic, price)
values(4651,'eye clinic',3,120 );

insert into clinic(clinic_id, clinic_use, number_clinic, price)
values(4652,'surgey clinic',2,150 );


insert into clinic(clinic_id, clinic_use, number_clinic, price)
values(4653,'heart clinic',1,160 );

insert into clinic(clinic_id, clinic_use, number_clinic, price)
values(4654,'orthopedic clinic',5,200 );

select *from clinic;

insert into patient(patient_id, patient_Name, patient_phone, patient_Address, clinic_id)
values(89431,'Abdallah mansour',01001520251,'doska',4650 );

insert into patient(patient_id, patient_Name, patient_phone, patient_Address, clinic_id)
values(89432,'Ahmed ali',01501630401,'baltem',4651 );

insert into patient(patient_id, patient_Name, patient_phone, patient_Address, clinic_id)
values(89433,'Mostafa ahmed',01211140841,'sedi ghazy',4652 );

insert into patient(patient_id, patient_Name, patient_phone, patient_Address, clinic_id)
values(89434,'habibamahmoud',01115643021,'defrea',4653 );

insert into patient(patient_id, patient_Name, patient_phone, patient_Address, clinic_id)
values(89435,'Ahmed Amer',01000264791,'el shean',4654 );


SELECT *FROM patient ;

insert into doctors(doctors_id, doctors_name, doctors_phone, specialties, clinic_id, patient_id) 
values(10101,'elsead mansour', 01043012551,'dentists',4650,89431);

insert into doctors(doctors_id, doctors_name, doctors_phone, specialties, clinic_id, patient_id) 
values(10102,'magdye ali', 01036459621,'eye',4651,89432);

insert into doctors(doctors_id, doctors_name, doctors_phone, specialties, clinic_id, patient_id) 
values(10103,'ahmed elatter', 01246783411,'serguy',4652,89433);


insert into doctors(doctors_id, doctors_name, doctors_phone, specialties, clinic_id, patient_id) 
values(10104,'reda mohamed', 01556794212,'heart',4653,89434);
 
 
insert into doctors(doctors_id, doctors_name, doctors_phone, specialties, clinic_id, patient_id) 
values(10105,'mai ahmed', 01015161920,'orthopedic',4654,89435);

select *from doctors;



 select * from clinic where clinic_id  in ( select distinct patient_id from patient);
 
 select * from clinic where clinic_id not in (select distinct doctors_id from doctors) ;

  select * from patient where patient_id not in ( select distinct doctors_id from doctors);

 select COUNT(patient_id) as Count_patient  from patient group by patient_id ;
 

select COUNT(clinic_id) as Count_clinic  from clinic group by clinic_id ;

update patient
set patient_Name = 'merhan seedek' 
where patient_id = 89431 ;
 
update patient
set patient_Name = 'seedek goma' 
where patient_id = 89433 ;

update patient
set patient_Name = 'salwa ahmed' 
where patient_id = 89435 ;

update patient
set patient_Name = 'faries abdo' 
where patient_id = 89432 ;




update patient
set patient_Name = 'farahi ibrahiem' 
where patient_id = 89434 ;


delete from doctors
where doctors_id = 10101 ;

delete from doctors
where doctors_id = 10102 ;

delete from doctors
where doctors_id = 10103 ;

delete from clinic
where clinic_id = 4652 ;

delete from clinic
where clinic_id = 4650 ;