<#

.SYNOPSIS
	Account Management - Add Active Directory Groups With Database Lookups
.DESCRIPTION
	Function that will query database for changes and then call predefined functions to take care of actual changes.
.NOTES
	File Name	:	add-coursesFromDB.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 17, 2012
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	add-coursesFromDB -scope "daily"
.EXAMPLE
	add-coursesFromDB -scope "global"

	
#>

function add-coursesFromDB
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$scope
	)

	$global_sql = "select CONCAT((SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = v.school_id),
    ' - ',REPLACE(v.course_name,'/',' '),' - Period ',v.period,' - Section ',v.section) group_name, 
LOWER(CONCAT((SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = v.school_id),
    REPLACE(REPLACE(v.course_name,' ', ''),'/',''),v.period,v.section)) group_short_name, v.school_id 
from cou_d0 v"
	
	$daily_sql = "select CONCAT((SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = v.school_id),
    ' - ',REPLACE(v.course_name,'/',' '),' - Period ',v.period,' - Section ',v.section) group_name, 
LOWER(CONCAT((SELECT s.abbreviation FROM lu_schools s WHERE s.school_id = v.school_id),
    REPLACE(REPLACE(v.course_name,' ', ''),'/',''),v.period,v.section)) group_short_name, v.school_id 
from v_cou_d_add v"

	# Open the database connection
	$conn = New-MySQLConnection -server $dbserver -user $dbuser -password $dbpass -database $edage_db
	
	if ($scope -eq 'global') {		
		# Query all records from the database
		$results = Invoke-MySQLQuery $global_sql -conn $conn

		Foreach ($result in $results) {
			$container_base = stu_ad_home_map -school_id $result.school_id
			$container = $container_base + $courseGroupContainer

			if ($WhatIfPreference -eq $true) {
				add-adGroup -group $result.group_short_name -container $container -description $result.group_name -WhatIf
			} else {
				add-adGroup -group $result.group_short_name -container $container -description $result.group_name
			}
	 	}
	} else {
		# Query single record from the database
		$result = Invoke-MySQLQuery $daily_sql -parameters @{account=$account} -conn $conn
		$container_base = stu_ad_home_map -school_id $result.container
		$container = $container_base + $courseGroupContainer

		if ($WhatIfPreference -eq $true) {
			add-adGroup -group $result.group_short_name -container $container -description $result.group_name -WhatIf
		} else {
			add-adGroup -group $result.group_short_name -container $container -description $result.group_name
		}
	}
}