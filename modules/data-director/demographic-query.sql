select 
    TRIM(stu.`OTHER-ID`) "Local Student ID", n.`FIRST-NAME` "First Name", n.`LAST-NAME` "Last Name", stu.`MN-EDE-NBR` "Student State ID",
    DATE_FORMAT(n.BIRTHDATE, '%Y-%m-%d') Birthdate, n.GENDER Gender, 
    
    '' Race, '' AS "Primary Language", '' Gifted, '' AS "Special Education", '' AS "Primary Disability",
    
    (select 
        GROUP_CONCAT(CONCAT(IFNULL(gn.`FIRST-NAME`,''),' ',IFNULL(gn.`LAST-NAME`,'')) SEPARATOR '/')
        from student_guardian sg 
        left join name gn on sg.`NAME-ID` = gn.`NAME-ID`
        join student_family sf on sg.`NAME-ID` = sf.`STUDENT-ID` and sf.`RCV-REPORT-CARDS` = 'Y'
        where sg.`STUDENT-ID` = stu.`NAME-ID`
        GROUP BY sg.`STUDENT-ID`) guardian_name,
    CONCAT(LTRIM(IFNULL(a.`STREET-NUMBER`,'')),' ',IFNULL(RTRIM(a.`STREET-NAME`),''),'   ',IFNULL(LTRIM(a.`STREET-APPT`),'')) Address, '' AS "Second Address Line",
    z.`ZIP-CITY` City, z.`ZIP-STATE` State, z.`ZIP-CODE` Zip, 
    concat(left(n.`PRIMARY-PHONE`,3),'.',mid(n.`PRIMARY-PHONE`,4,3),'.',right(n.`PRIMARY-PHONE`,4)) AS "Primary Phone Number", 
    
    '' AS "Date Entered School", DATE_FORMAT(stu.`WA-MOST-RECENT-DIST-ENROLLMENT`, '%Y-%m-%d') AS "Date Entered District", '' AS "Lunch Program", '' AS "Migrant", 
    IF(clf.`SC-LOG-6` = 'Y','Y','N') AS "Bilingual Status", 
    
    CASE WHEN clf_alt.`SC-END-DATE` IS NOT NULL 
        THEN clf_alt.`SC-END-DATE`
        ELSE clf.`SC-END-DATE`
    END AS "Bilingual Exit Date", 
 
 '' AS "Current GPA", '' AS "Homeless Status", '' AS "Section 504 Plan", '' AS "Section 504 Date", '' AS "Roll Up School", '' AS "NBR Referrals",
    '' AS "Days Suspended", '' AS "Excused Absences", '' AS "Unexcused Absences", '' AS "Tardy Total", '' AS "Placement Test Date", '' AS "Placement Test Level",
    '' AS "Placement Test Scale Score", '' AS "Early Immigrant Status", '' AS "Unknown Field 5", '' AS "Last Qualified Move Date", '' MSRTSId, '' AS Hispanic
    
    
from student stu
join name n on n.`NAME-ID` = stu.`NAME-ID` 
left join address a ON n.`ADDRESS-ID` = a.`ADDRESS-ID`
left join zip z on a.`ZIP-CODE` = z.`ZIP-CODE`
left join student_entity se on stu.`STUDENT-ID` = se.`STUDENT-ID` AND se.`STUDENT-STATUS`= 'A' AND se.`X-DEFAULT-ENTITY` = 'Y'
join entity en on se.`SCHOOL-ID` = en.`ENTITY-ID`
left join student_classifications clf on stu.`STUDENT-ID` = clf.`STUDENT-ID` AND clf.`SC-RECORD-TYPE` = 'WALEP' AND en.`ENTITY-ID` = clf.`ENTITY-ID` and clf.`SC-END-DATE` IS NULL
left join student_classifications clf_alt on stu.`STUDENT-ID` = clf_alt.`STUDENT-ID` AND clf_alt.`SC-RECORD-TYPE` = 'WALEP' AND en.`ENTITY-ID` = clf_alt.`ENTITY-ID`
group by stu.`OTHER-ID`