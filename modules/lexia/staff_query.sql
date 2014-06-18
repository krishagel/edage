select REPLACE(REPLACE(s.staff_id, ' ',''),"'","") "StaffId", sch.school_id "SchoolId", s.first_name "FirstName", s.last_name "LastName", s.email "Username",
'' AS "Password", 
CASE 
    WHEN s.staff_id = 'CROWTJES000' THEN 'SAA'
    ELSE 'C'
END AS "Role"
from stf_d0 s
join lu_schools sch on sch.state_id = s.school_id
join v_curr_cou c on c.teacher_id = s.staff_id
where s.school_id in ('3635','3488','3226','2564','2848')
AND s.staff_id NOT LIKE '*%'
group by s.staff_id