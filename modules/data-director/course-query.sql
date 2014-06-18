select 
    DISTINCT(c.`COR-NUM-ID`) local_courseid,
    c.`COR-ALPHAKEY` shortname, c.`COR-LDESC` longname, c.`COR-CREDITS-GOOD` AS credit, c.`ENTITY-ID` siteid, s.`SUBJECT-SDESC` subjectarea
from course c
left join class_meet cm on c.`COR-NUM-ID` = cm.`COR-NUM-ID`
left join name n on cm.`NAME-ID` = n.`NAME-ID`
left join subject s on c.`SUBJECT-ID` = s.`SUBJECT-ID` AND c.`SCHOOL-YEAR` = s.`SCHOOL-YEAR` AND c.`ENTITY-ID` = s.`ENTITY-ID`
where c.`SCHOOL-YEAR` = (if( (month(CURRENT_DATE) = 7 and day(CURRENT_DATE) >=1) or month(CURRENT_DATE) >= 8, year(CURRENT_DATE)+1, year(CURRENT_DATE)) ) 
    AND c.`COR-STATUS` = 'A'