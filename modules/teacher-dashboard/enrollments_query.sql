select concat('S', e.student_id) as Email, 
lower(concat('td.',sch.abbreviation, replace(replace(replace(replace(c.course_name,',',''),'&',''),'/',''),' ',''), 'p', c.period, 's', c.section, '-2014')) "Class"

from v_curr_enr e
join v_curr_cou c on e.course_id = c.course_id
join lu_schools sch on c.school_id = sch.school_id
join v_curr_stf stf on c.teacher_id = stf.staff_id
where sch.abbreviation in ('CAS','TUK','THO') and c.period = 1 and c.term_code is not null
    or sch.abbreviation in ('SHO','FOS')