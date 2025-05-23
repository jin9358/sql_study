-- 환자정보
-- 과 
-- 의사 tb
-- 의사 -> 각 과 아이디 가지고있어야함,

-- visit
-- 환자
-- 부서
-- 의사
-- pay 

insert into patient_tb(patient_id, patient_name, patient_gender, patient_birth)
select
	visit_id,
    patient_name,
    gender,
    birth_date
from 
	sample_clinic_tb
order by
	visit_id,
    patient_name,
    gender,
    birth_date;
    
insert into department_tb(department_id, department_name)
select
	0,
    department
from
	sample_clinic_tb
order by
	department;
    
insert into doctor_tb(doctor_id, doctor_name, department_name)
select
	0,
    doctor_name,
    department
from
	sample_clinic_tb sct
order by
	sct.doctor_name,
    sct.department;
    
insert into pay_tb(pay_id, pay_name, pay_visit, pay_money)
select
	0,
    treatment,
    visit_date,
    fee
from
	sample_clinic_tb
order by
	treatment,
    visit_date,
    fee;
    
insert into visit_tb
select
	0,
    pt.patient_name,
    pt.patient_gender,
    pt.patient_birth,
    dt.department_name,
    dot.doctor_name,
    tt.treatment_name,
    tt.treatment_date,
    tt.treatment_fee
from
	sample_clinic_tb sct
    inner join department_tb dt on(dt.department_name = sct.department)
    inner join doctor_tb dot on (dot.doctor_name = sct.doctor_name)
    inner join patient_tb pt on (pt.patient_name = sct.patient_name)
    inner join treatment_tb tt on (tt.treatment_name = sct.treatment)
    
	