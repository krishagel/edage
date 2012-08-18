<#

.SYNOPSIS
	Account Management - Update Active Directory Group Membership With Database Lookups
.DESCRIPTION
	Function that will query database for changes and then call predefined functions to take care of actual changes.
.NOTES
	File Name	:	update-enrollmentsFromDB.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 17, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
.EXAMPLE
	update-enrollmentsFromDB -scope "daily"
.EXAMPLE
	update-enrollmentsFromDB -scope "all"

	
#>

function update-enrollmentsFromDB
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$scope
	)

	$daily_add_sql = "select (SELECT LOWER(CONCAT((SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = c.school_id),
    REPLACE(REPLACE(c.course_name,' ', ''),'/',''),c.period,c.section)) from cou_d0 c WHERE c.course_id = v.course_id) group_short_name, 
CONCAT('S',IFNULL(v.student_id,'')) username
from v_enr_d_add v"
	
	$daily_remove_sql = "select (SELECT LOWER(CONCAT((SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = c.school_id),
    REPLACE(REPLACE(c.course_name,' ', ''),'/',''),c.period,c.section)) from cou_d0 c WHERE c.course_id = v.course_id) group_short_name, 
CONCAT('S',IFNULL(v.student_id,'')) username
from v_enr_d_rem v"

	$all_add_sql = "select (SELECT LOWER(CONCAT((SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = c.school_id),
    REPLACE(REPLACE(c.course_name,' ', ''),'/',''),c.period,c.section)) from cou_d0 c WHERE c.course_id = v.course_id) group_short_name, 
CONCAT('S',IFNULL(v.student_id,'')) username
from enr_d0 v"

	# Open the database connection
	$conn = New-MySQLConnection -server $dbserver -user $dbuser -password $dbpass -database $edage_db
	
	if ($scope -eq 'daily') {		
		# Query all records from the database
		$add_results = Invoke-MySQLQuery $daily_add_sql -conn $conn
		$remove_results = Invoke-MySQLQuery $daily_remove_sql -conn $conn

		Foreach ($result in $add_results) {
			if ($WhatIfPreference -eq $true) {
				add-adGroupMember -group $result.group_short_name -account $result.username -WhatIf
			} else {
				add-adGroupMember -group $result.group_short_name -account $result.username
			}
	 	}
		Foreach ($result in $remove_results) {
			if ($WhatIfPreference -eq $true) {
				remove-adGroupMember -group $result.group_short_name -account $result.username -WhatIf
			} else {
				remove-adGroupMember -group $result.group_short_name -account $result.username
			}		
		}
	} else {
		# Query single record from the database
		$result = Invoke-MySQLQuery $daily_sql -parameters @{account=$account} -conn $conn
		if ($WhatIfPreference -eq $true) {
			add-adGroupMember -group $result.group_short_name -account $result.username -WhatIf
		} else {
			add-adGroupMember -group $result.group_short_name -account $result.username
		}
	}
}