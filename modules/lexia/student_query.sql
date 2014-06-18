select RTRIM(v.student_id) studentid, v.school_id schoolid, v.first_name firstname, IFNULL(substr(v.middle_name, 1, 1),'') middleinitial,
v.last_name lastname, RTRIM(v.username) username, '1234' password, v.grade grade, DATE_FORMAT(v.birthdate, "%Y-%m-%d") dob, v.gender gender
from v_curr_stu v where v.grade >= 0