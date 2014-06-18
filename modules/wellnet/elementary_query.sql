select stu.state_id SSID, stu.last_name as "Last Name", stu.first_name "First Name", stu.middle_name "Middle Name", 
stu.birthdate "Birth Date", stu.gender "Gender", stu.grade "Grade", lu.name "Entity Name", stf.last_name "Advisor"
from v_curr_enr e
join v_curr_cou c on e.course_id = c.course_id
join v_curr_stu stu on e.student_id = stu.student_id
join lu_schools lu on stu.school_id = lu.school_id
join stf_d0 stf on c.teacher_id = stf.staff_id
where c.school_id in (126,135,188)
group by stu.student_id