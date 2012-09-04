<#

.SYNOPSIS
	Account Management - Check Home Folder Existence
.DESCRIPTION
	Function that will check to make sure all users have a home folder
.NOTES
	File Name	:	check-userHomeExistence.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 21, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
.EXAMPLE
	check-userHomeExistence -class student
	
#>

function check-userHomeExistence {
	Param (
		[string]$class
	)
	
	$all_sql = "select v.username account, v.school_id container, v.password password, 
CONCAT(IFNULL(v.last_name,''),', ',IFNULL(v.first_name,''),' ',IFNULL(LEFT(v.middle_name,1),'')) displayName,
CONCAT(RTRIM(v.username),'@',(SELECT c.value FROM lu_config c WHERE c.key = 'stu_email_domain')) email, 
'student' type, v.student_id idnum, v.grade grade, v.last_name lastName,
v.first_name firstName, LEFT(v.middle_name,1) middleInitial, 
CONCAT(LEFT(v.first_name,1),LEFT(v.middle_name,1),LEFT(v.last_name,1)) initials,
CONCAT('Grade ',v.grade,' Student') title,
(SELECT s.phone FROM lu_schools s WHERE s.school_id = v.school_id) phone,
(SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = v.school_id) school_abbr,
(SELECT s.name FROM lu_schools s WHERE s.school_id = v.school_id) department,
(SELECT c.value FROM lu_config c WHERE c.key = 'district_name') company,
(SELECT s.city FROM lu_schools s WHERE s.school_id = v.school_id) city,
(SELECT s.state FROM lu_schools s WHERE s.school_id = v.school_id) state,
(SELECT s.zip FROM lu_schools s WHERE s.school_id = v.school_id) zip,
(SELECT s.street FROM lu_schools s WHERE s.school_id = v.school_id) street,
v.phone homePhone, CONCAT(IFNULL(v.street,''),', ',IFNULL(v.city,''),', ',IFNULL(v.state,''),' ',IFNULL(v.zip,'')) homeAddress
from stu_d0 v"

	# Open the database connection
	$conn = New-MySQLConnection -server $dbserver -user $dbuser -password $dbpass -database $edage_db
	$results = Invoke-MySQLQuery $all_sql -conn $conn

	Foreach ($result in $results) {
		if ($class -eq 'student') {
			$homedir_container = stu_home_folder_map -school_id $result.container
			$homedir = Join-Path $homedir_container -ChildPath $result.account
			if (!(Test-Path -path $homedir)){
				create-userHomeDir -user $result.account -class student -lookup $result.container
			} else {
				Write-Host "Folder already exists for $result.account"
			}
		}
	}
}