use hospital;

INSERT INTO Patients (patient_id, name,age ,birth_date, sex, address, phone_number)
VALUES (101, 'أحمد علي', 30,'1995-03-12', 'Male', '123 شارع النيل، القاهرة', '0123456789');

INSERT INTO doctors (doctors_id, name,department ,phone_number, work_hour)
VALUES (101, 'أمحمود محمد', 'جراحة عامة', '01271885939', '8.0');

INSERT INTO departments (department_id, department_description,departmentName, location, opening_hour, doctorid)
VALUES (101,"جراخة",'جراحة عامة', 'الدور الاول', '8.0 am', 101);

INSERT INTO appointments (appointment_id, doctorid,patientid,department_id ,department_date, doctor_department, type_of_appointment)
VALUES (101, 101, 101,101, '2027-10-28', 'جراحة عامة', 'كشف');

INSERT INTO medications (medication_id, medican_name,dosage ,expire_date)
VALUES (101, 'أبروفين', '2 times per day','1995-03-12');

INSERT INTO treatments (treatments_id, prescribed_treatment,dosage,patientid ,treatments_description)
VALUES(102, 'alot', '2 times per day',101, 'alot'),
(103, 'alot', '2 times per day',101, 'alot'),
(104, 'alot', '2 times per day',101, 'alot'),
(105, 'alot', '2 times per day',101, 'alot');


INSERT INTO Billing (billing_id, cost,type,pay_date)
VALUES (101, 50, 'visa', '2024-10-28'),
(102, 50, 'visa', '2024-10-28'),
(103, 50, 'visa', '2024-10-28'),
(104, 50, 'visa', '2024-10-28'),
(105, 50, 'visa', '2024-10-28');

INSERT INTO Billing (billing_id, cost,type,pay_date)
VALUES 
(106, 120, 'visa', '2023-10-28'),
(107, 2550, 'visa', '2023-10-28'),
(108, 5000, 'visa', '2023-10-28'),
(109, 500, 'visa', '2023-10-28');

INSERT INTO Patients (patient_id, name, age, birth_date,sex, address, phone_number)
VALUES 
(102, 'Mona Ahmed', 35,'1988-07-22', 'Female', '456 Zamalek St, Cairo', '0123344556'),
(103, 'Kareem Ali', 30,'1995-11-15', 'Male', '789 Downtown St, Giza', '0121122334'),
(104, 'Fatma Mohamed',32, '1992-01-10', 'Female', '101 Nasr City, Cairo', '0109988776'),
(105, 'Hassan Mostafa', 24,'2000-06-05','Male', '555 Mohandeseen, Cairo', '0127766554'),
(106, 'Hassan Mostafa', 24,'2000-06-05','Male', '555 Mohandeseen, Cairo', '0127766554'),
(107, 'Hassan Mostafa', 24,'2000-06-05','Male', '555 Mohandeseen, Cairo', '0127766554'),

(108, 'Hassan Mostafa', 24,'2000-06-05','Male', '555 Mohandeseen, Cairo', '0127766554'),
(109, 'Hassan Mostafa', 24,'2000-06-05','Male', '555 Mohandeseen, Cairo', '0127766554');

INSERT INTO Doctors (doctors_id, name, department, phone_number, work_hour)
VALUES 
(102, 'Dr. Omar Said', 'Orthopedics', '0104455667', 9),
(103, 'Dr. Amina Fathy', 'Pediatrics', '0117788990', 8),
(104, 'Dr. Youssef Ibrahim', 'Dermatology', '0105566778', 10),
(105, 'Dr. Salma Magdy', 'Dentistry', '0126677889', 8);
INSERT INTO departments (department_id, department_description,departmentName, location, opening_hour, doctorid)
VALUES 
(102,'sick' ,'Orthopedics', '2nd Floor',  '9 AM - 5 PM',102),
(103, 'sick' ,'Pediatrics', '1st Floor', '8 AM - 4 PM', 103),
(104, 'sick' ,'Dermatology', '3rd Floor',  '10 AM - 6 PM',104),
(105, 'sick' ,'Dentistry', 'Ground Floor', '8 AM - 2 PM', 105);
INSERT INTO appointments (appointment_id, doctorid,patientid,department_id ,department_date, doctor_department, type_of_appointment)
VALUES 
(102, 102, 102, 102, '2024-11-05 09:00:00', 'Routine check-up', 'Scheduled'),
(103, 103, 103, 103, '2024-11-05 10:30:00', 'Follow-up visit', 'Scheduled'),
(104, 104, 104, 104, '2024-11-06 11:15:00', 'Consultation', 'Scheduled'),
(105, 105, 105, 105, '2024-11-07 12:00:00', 'Dental cleaning', 'Completed'),
(106, 102, 103, 103, '2024-11-08 01:30:00', 'Child vaccination', 'Scheduled'),
(107, 104, 102, 102, '2024-11-09 02:00:00', 'Orthopedic follow-up', 'Scheduled');

Alter table medications 
add quantityavailable int;
 select * from appointments;

INSERT INTO medications (medication_id, medican_name,dosage ,expire_date,quantityavailable)
VALUES (102, '123', '2 times per day','1995-03-12',15),
 (103, 'كونجستين', '2 times per day','1995-03-12',10),
 (104, 'كونجستال', '3 times per day','1995-03-12',60),
 (105, 'بنادول', '2 times per day','1995-03-12',20),
 (106, 'الام مفاصل', '2 times per day','1995-03-12',12),
  (107, 'ترامادول', '2 times per day','1995-03-12',42);
  
INSERT INTO medications (medication_id, medican_name,dosage ,expire_date,quantityavailable)
VALUES (108, '123', '2 times per day','1995-03-12',5),
 (109, 'كونجستين', '2 times per day','1995-03-12',0),
 (110, 'كونجستال', '3 times per day','1995-03-12',2),
 (111, 'بنادول', '2 times per day','1995-03-12',6),
 (112, 'الام مفاصل', '2 times per day','1995-03-12',8),
  (113, 'ترامادول', '2 times per day','1995-03-12',1);
  
    
