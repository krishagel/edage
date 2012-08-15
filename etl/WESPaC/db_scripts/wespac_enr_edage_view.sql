SELECT 
    DISTINCT(CONCAT(stu.`OTHER-ID`,'-',IF (cm.`CLAS-SECTION` IS NULL,CONCAT(crs.`COR-NUM-ID`,'-',crs.`COR-ALPHAKEY`),CONCAT(crs.`COR-NUM-ID`,'-',cm.`CLAS-SECTION`,'-',cm.`DSP-PERIOD`)))) enrollment_id,
    IF (cm.`CLAS-SECTION` IS NULL,CONCAT(crs.`COR-NUM-ID`,'-',crs.`COR-ALPHAKEY`),CONCAT(crs.`COR-NUM-ID`,'-',cm.`CLAS-SECTION`,'-',cm.`DSP-PERIOD`)) course_id,
    stu.`OTHER-ID` student_id
from student_class sc
JOIN STUDENT stu ON sc.`STUDENT-ID` = stu.`STUDENT-ID`
JOIN class_meet cm ON cm.`COR-NUM-ID` = sc.`COR-NUM-ID` AND cm.TRACK = sc.TRACK AND cm.`CLAS-SECTION` = sc.`CLAS-SECTION`
JOIN course crs ON sc.`COR-NUM-ID` = crs.`COR-NUM-ID`
WHERE sc.`SCHD-STATUS` = 'A' 
    AND sc.`SCHOOL-YEAR` = (if( (month(CURRENT_DATE) = 7 and day(CURRENT_DATE) >=1) or month(CURRENT_DATE) >= 8, year(CURRENT_DATE)+1, year(CURRENT_DATE)) )