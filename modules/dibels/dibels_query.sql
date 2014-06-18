select stu.state_id StudentIDNumber, stu.last_name StudentLastName, stu.first_name StudentFirstName, stu.grade GradeLevel, 
lu.name SchoolName, stf.last_name TeacherLastName, stf.first_name TeacherFirstName, stu.middle_name StudentMiddleName, 
'' InstructionalGradeLevel, stu.student_id StudentIDNumberAlt, stu.gender Gender, '' FreeLunchStatus, LEFT(stu.lep_status,1) ELLStatus, '' SPEDCode, '' EthnicityCode, 
'' BilingualStatus, '' DyslexicStatus, '' Title1Status, stu.username StudentLogin, stu.password StudentPassword, 
SUBSTRING_INDEX(stf.email,'@', 1) TeacherLogin, 'Tukwila1' TeacherPassword, stf.email TeacherEmailAddress, stf.last_name ClassName, DATE_FORMAT(stu.birthdate, "%Y-%m-%d") Birthdate,
c.course_name CourseID, c.section SectionID, c.period PeriodNumber, '' ProductLevel
from v_curr_enr e
join v_curr_cou c on e.course_id = c.course_id
join stu_d0 stu on e.student_id = stu.student_id
join lu_schools lu on stu.school_id = lu.school_id
join stf_d0 stf on c.teacher_id = stf.staff_id
where stu.grade >= 0 AND c.school_id in (126,135,188) OR
    c.teacher_id in ('CROWTJES000','HAMILSUZ000','PASCUALI000')
group by stu.student_id