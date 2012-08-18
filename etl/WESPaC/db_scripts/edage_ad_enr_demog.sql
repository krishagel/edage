select (SELECT LOWER(CONCAT((SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = c.school_id),
    REPLACE(REPLACE(c.course_name,' ', ''),'/',''),c.period,c.section)) from cou_d0 c WHERE c.course_id = v.course_id) group_short_name, 
CONCAT('S',IFNULL(v.student_id,'')) student_id
from v_enr_d_rem v