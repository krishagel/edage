select 
    DISTINCT(stu.`OTHER-ID`) student_id, n.`FIRST-NAME` first_name, n.`MIDDLE-NAME` middle_name, 
    n.`LAST-NAME` last_name, 
    (12 - (stu.`GRAD-YR` - (if( (month(CURRENT_DATE) = 7 and day(CURRENT_DATE) >=1) or month(CURRENT_DATE) >= 8, year(CURRENT_DATE)+1, year(CURRENT_DATE)) ))) grade, 
    en.`ENTITY-ID` school_id, n.`PRIMARY-PHONE` phone, n.BIRTHDATE birthdate,
    '' street, z.`ZIP-CITY` city, z.`ZIP-STATE` state, z.`ZIP-CODE` zip,
    CONCAT('S', stu.`OTHER-ID`) username, DATE_FORMAT(n.BIRTHDATE, '%b%e%Y') password, 
    CONCAT('S', stu.`OTHER-ID`,'@tukwila.wednet.edu') email, 
    n.GENDER gender, ''guardian_name, stu.`MN-EDE-NBR` state_id
from name n
join student stu on n.`NAME-ID` = stu.`NAME-ID` 
left join address a ON n.`ADDRESS-ID` = a.`ADDRESS-ID`
left join zip z on a.`ZIP-CODE` = z.`ZIP-CODE`
join student_entity se on stu.`STUDENT-ID` = se.`STUDENT-ID` AND se.`STUDENT-STATUS`= 'A' AND se.`X-DEFAULT-ENTITY` = 'Y'
join entity en on se.`SCHOOL-ID` = en.`ENTITY-ID` 