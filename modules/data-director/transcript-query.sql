select 
    TRIM(stu.`OTHER-ID`) studentid, stu.`MN-EDE-NBR` "Student State ID", c.`COR-NUM-ID` courseid, c.`ENTITY-ID` siteid, 
    lu.state_id "State Site ID", sc.`GRD-SEM-MRK` AS gradereceived, sc.`SCHOOL-YEAR` year, sc.`SCHD-STP-TRM` nmester,
    DATE_FORMAT(sc.`EARN-CRDT-LST-DTE-UPD`, '%Y-%m-%d') datecompleted, sc.`SCHD-HST-ECP` gradetaken, '' as creditsreceived, '' AS siteother
from student stu
join name n on n.`NAME-ID` = stu.`NAME-ID` 
join student_class sc on sc.`STUDENT-ID` = stu.`NAME-ID`
join course c on c.`COR-NUM-ID` = sc.`COR-NUM-ID`
join edage.lu_schools lu on c.`ENTITY-ID` = lu.school_id