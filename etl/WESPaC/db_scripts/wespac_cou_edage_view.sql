select 
    DISTINCT(IF (cm.`CLAS-SECTION` IS NULL,CONCAT(c.`COR-NUM-ID`,'-',c.`COR-ALPHAKEY`),CONCAT(c.`COR-NUM-ID`,'-',cm.`CLAS-SECTION`,'-',cm.`DSP-PERIOD`))) course_id,
    c.`ENTITY-ID` school_id, cm.`DSP-PERIOD` period, cm.`CLAS-SECTION` section, 
    c.`COR-ALPHAKEY` course_code, c.`COR-SDESC` course_name, n.nalphakey teacher_id
from course c
left join class_meet cm on c.`COR-NUM-ID` = cm.`COR-NUM-ID`
left join name n on cm.`NAME-ID` = n.`NAME-ID`
where c.`SCHOOL-YEAR` = (if( (month(CURRENT_DATE) = 7 and day(CURRENT_DATE) >=1) or month(CURRENT_DATE) >= 8, year(CURRENT_DATE)+1, year(CURRENT_DATE)) ) 
    AND c.`COR-STATUS` = 'A'