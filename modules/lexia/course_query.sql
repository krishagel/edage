select REPLACE(c.course_id,'-','') ClassId, c.school_id SchoolId, 
LEFT(CONCAT(LEFT(lu.abbreviation,2),LEFT(REPLACE(c.course_name,' ',''),14),c.section,c.period),20) Name, 
stu.grade Grade, REPLACE(REPLACE(stf.staff_id, ' ',''),"'","") StaffId, 
GROUP_CONCAT(RTRIM(e.student_id)) StudentId
from v_curr_enr e
join v_curr_cou c on e.course_id = c.course_id
join v_curr_stu stu on e.student_id = stu.student_id
join lu_schools lu on stu.school_id = lu.school_id
join stf_d0 stf on c.teacher_id = stf.staff_id
where (lu.state_id in ('3635','3488','3226') AND c.period = 1 AND stu.grade >= 0) 
    OR (lu.state_id in ('2564','2848'))
group by c.course_id

