SELECT 
    stu.`OTHER-ID` studentid,  n.nalphakey userid, crs.`ENTITY-ID` siteid, 
    crs.`COR-NUM-ID` courseid,
    cm.`DSP-PERIOD` period, '' AS "State Course Code",
    IF ((12 - (stu.`GRAD-YR` - (if( (month(CURRENT_DATE) = 7 and day(CURRENT_DATE) >=1) or month(CURRENT_DATE) >= 8, year(CURRENT_DATE)+1, year(CURRENT_DATE)) ))) = 0, 'K', 
        (12 - (stu.`GRAD-YR` - (if( (month(CURRENT_DATE) = 7 and day(CURRENT_DATE) >=1) or month(CURRENT_DATE) >= 8, year(CURRENT_DATE)+1, year(CURRENT_DATE)) )))) grade,
    cm.`SCH-STP-TRM` as nmester, stu.`MN-EDE-NBR` "Student State ID", lu.state_id "State Site ID"
        
from student_class sc
JOIN STUDENT stu ON sc.`STUDENT-ID` = stu.`STUDENT-ID`
JOIN class_meet cm ON cm.`COR-NUM-ID` = sc.`COR-NUM-ID` AND cm.TRACK = sc.TRACK AND cm.`CLAS-SECTION` = sc.`CLAS-SECTION`
JOIN course crs ON sc.`COR-NUM-ID` = crs.`COR-NUM-ID`
left join name n on cm.`NAME-ID` = n.`NAME-ID`
join edage.lu_schools lu on crs.`ENTITY-ID` = lu.school_id
WHERE sc.`SCHD-STATUS` = 'A' 
    AND sc.`SCHOOL-YEAR` = (if( (month(CURRENT_DATE) = 7 and day(CURRENT_DATE) >=1) or month(CURRENT_DATE) >= 8, year(CURRENT_DATE)+1, year(CURRENT_DATE)) )