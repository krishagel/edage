select CONCAT((SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = v.school_id),
    ' - ',REPLACE(v.course_name,'/',' '),' - Period ',v.period,' - Section ',v.section) group_name, 
LOWER(CONCAT((SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = v.school_id),
    REPLACE(REPLACE(v.course_name,' ', ''),'/',''),v.period,v.section)) group_short_name, v.school_id 
from cou_d0 v
