create database hospital;
use hospital;

create table patients(
patient_id int primary key,
name varchar(50),
sex varchar(10),
age int,
birth_date datetime,
address varchar(50),
phone_number int
);

create table doctors(
doctors_id int primary key,
name varchar(50),
department varchar(50),
phone_number int,
work_hour int
);

create table departments(
department_id int primary key,
department_description varchar(100),
departmentName  varchar(100),
location varchar(50),
opening_hour varchar(50),
doctorid int,
FOREIGN KEY (doctorid) REFERENCES doctors(doctors_id)
);

create table appointments(
appointment_id int primary key,
doctorid int,
patientid int,
department_id int ,
FOREIGN KEY (doctorid) REFERENCES doctors(doctors_id),
FOREIGN KEY (patientid) REFERENCES patients(patient_id),
FOREIGN KEY (department_id) REFERENCES departments(department_id),
department_date datetime,
doctor_department varchar(100),
type_of_appointment varchar(100)
) ;

create table medications(
medication_id int primary key,
medican_name varchar(100),
dosage varchar(50),
expire_date datetime
) ;

create table treatments(
treatments_id int primary key,
prescribed_treatment varchar(100),
dosage varchar(50),
patientid int,
FOREIGN KEY (patientid) REFERENCES patients(patient_id),
treatments_description varchar(100)
) ;

create table Billing(
billing_id int primary key,
cost int,
type varchar(50),
pay_date datetime 
) ;



