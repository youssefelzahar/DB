use hospital;
#name of patient, name of doctors, type of appointments and name of department
SELECT 
    patients.name AS patient_name,
    doctors.name AS doctor_name,
    appointments.type_of_appointment AS type_of_appointment,
    departments.departmentName AS department
FROM 
    patients
JOIN 
    appointments ON patients.patient_id = appointments.patientid
JOIN 
    doctors ON appointments.doctorid = doctors.doctors_id
JOIN 
    departments ON appointments.department_id = departments.department_id;
 #name of patient and dosage   
 select patients.name as patient_name,
 treatments.treatments_description as treatments_description,
 treatments.dosage as dosage
 from 
 patients
 join 
 treatments on patients.patient_id= treatments.patientid;
 #name of doctor, deparment and specific appointment date
 select doctors.doctors_id as ID,
 doctors.name as DoctorName,
 doctors.department as DoctorDepartment,
 departments.departmentName as DepartmentName,
 appointments.department_date as AppointmentsDate
  from doctors
  join departments on doctors.doctors_id=departments.department_id
  left join 
  appointments on doctors.doctors_id=appointments.doctorid
  where
  departments.departmentName ='Orthopedic follow-up' OR  -- استبدل "Cardiology" باسم القسم المطلوب
    (appointments.department_date = '2024-11-09 02:00:00' AND appointments.type_of_appointment = 'Scheduled');
    
 #total cost per year   
 select year(pay_date) as year,
 month(pay_date) as month,
 sum(billing.cost) as TotalCost
 from billing
  group by year(pay_date), month(pay_date)
  order by
  year,month;
  
 #medicine name and expire date and available quantity 
  select 
  medication_id,
  medican_name,
  expire_date,
  quantityavailable
  from medications 
  where 
  quantityavailable <10
  order by 
  quantityavailable desc;
  
#اسم المريض و حالة حجزه
  select 
  patients.name,
  type_of_appointment
  from
  appointments
  join
  patients on  patients.patient_id = appointments.patientid
  where
  type_of_appointment='Completed';
  
 #كل دكتور ليه كام مريض 
 select  doctors.name,
 doctors.doctors_id,
 count(distinct appointments.patientid) as no_of_patients
 from doctors
 join
 appointments on doctors.doctors_id=appointments.doctorid
 group by
 doctors.doctors_id,doctors.name;
 
 #دد المواعيد المحجوزة و اللي تمت لكل دكتور
  select  doctors.name,
 doctors.doctors_id,
 count(case when appointments.type_of_appointment ='Scheduled'then 1 end) as Scheduled,
 count(case when appointments.type_of_appointment ='Completed'then 1 end) as Completed
 from doctors
 join
 appointments on doctors.doctors_id=appointments.doctorid
 group by
 doctors.doctors_id,doctors.name;
 
 
 