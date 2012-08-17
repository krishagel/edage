select 
    DISTINCT(stu.`OTHER-ID`) student_id, n.`FIRST-NAME` first_name, n.`MIDDLE-NAME` middle_name, 
    n.`LAST-NAME` last_name, 
    (12 - (stu.`GRAD-YR` - (if( (month(CURRENT_DATE) = 7 and day(CURRENT_DATE) >=1) or month(CURRENT_DATE) >= 8, year(CURRENT_DATE)+1, year(CURRENT_DATE)) ))) grade, 
    en.`ENTITY-ID` school_id, 
    concat(left(n.`PRIMARY-PHONE`,3),'.',mid(n.`PRIMARY-PHONE`,4,3),'.',right(n.`PRIMARY-PHONE`,4)) phone, DATE_FORMAT(n.BIRTHDATE, '%Y-%m-%d') birthdate,
    CONCAT(LTRIM(IFNULL(a.`STREET-NUMBER`,'')),' ',IFNULL(RTRIM(a.`STREET-NAME`),''),'   ',IFNULL(LTRIM(a.`STREET-APPT`),'')) street, 
    z.`ZIP-CITY` city, z.`ZIP-STATE` state, z.`ZIP-CODE` zip,
    CONCAT('S', stu.`OTHER-ID`) username, DATE_FORMAT(n.BIRTHDATE, '%b%e%Y') password, 
    CONCAT('S', stu.`OTHER-ID`,'@tukwila.wednet.edu') email, 
    n.GENDER gender, 
    (select 
        GROUP_CONCAT(CONCAT(IFNULL(gn.`FIRST-NAME`,''),' ',IFNULL(gn.`LAST-NAME`,'')) SEPARATOR '/')
        from student_guardian sg 
        left join name gn on sg.`NAME-ID` = gn.`NAME-ID`
        join student_family sf on sg.`NAME-ID` = sf.`STUDENT-ID` and sf.`RCV-REPORT-CARDS` = 'Y'
        where sg.`STUDENT-ID` = stu.`NAME-ID`
        GROUP BY sg.`STUDENT-ID`) guardian_name,
    stu.`MN-EDE-NBR` state_id
from student stu
join name n on n.`NAME-ID` = stu.`NAME-ID` 
left join address a ON n.`ADDRESS-ID` = a.`ADDRESS-ID`
left join zip z on a.`ZIP-CODE` = z.`ZIP-CODE`
left join student_entity se on stu.`STUDENT-ID` = se.`STUDENT-ID` AND se.`STUDENT-STATUS`= 'A' AND se.`X-DEFAULT-ENTITY` = 'Y'
join entity en on se.`SCHOOL-ID` = en.`ENTITY-ID` 

