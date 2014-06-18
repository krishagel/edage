select lower(concat('td.',sch.abbreviation, replace(replace(replace(replace(c.course_name,',',''),'&',''),'/',''),' ',''), 'p', c.period, 's', c.section, '-2014')) Mailbox,
concat('TD ',sch.abbreviation, ' ',c.course_name, ' P', c.period, 'S', c.section, ' - 2014') Name,
concat('TD ',sch.abbreviation, ' - ', c.course_name, ' - Period ', c.period, ' - Section ', c.section) Description,
lower(substring_index(stf.email, '@', 1)) Teacher, 
if (sch.abbreviation in ('SHO', 'FOS'), c.course_name, 'Reading, Writing, Math, Social Studies, Science') Folders,
'any' as "Student Blog", 'My Pictures' as "Student Album",
concat(c.course_name, ' P', c.period, 'S', c.section, ' - 2014') as "Course Calendar", 
case sch.abbreviation
    when 'CAS' then 'tukwila.wednet.edu_o0m974ppgs0g93p1vdbbm2g564@group.calendar.google.com'
    when 'TUK' then 'tukwila.wednet.edu_rsa56ef6pcf4qaobr98rkp91g8@group.calendar.google.com'
    when 'THO' then 'tukwila.wednet.edu_aonu0v2dchqgqur2vr7tllo8n0@group.calendar.google.com'
    when 'SHO' then 'tukwila.wednet.edu_o35fnun40lk7ijrjec24aen2m4@group.calendar.google.com'
    when 'FOS' then 'tukwila.wednet.edu_ti3ig9dpdidcjt2s6j2ui7i8ng@group.calendar.google.com'
end "School Calendar",
concat('emm', lower(sch.abbreviation)) "Gmail Viewers"
from v_curr_cou c
join lu_schools sch on c.school_id = sch.school_id
join v_curr_stf stf on c.teacher_id = stf.staff_id
where sch.abbreviation in ('CAS','TUK','THO') and c.period = 1 and c.term_code is not null
    or sch.abbreviation in ('SHO','FOS')
order by sch.abbreviation desc