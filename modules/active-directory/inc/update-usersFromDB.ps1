﻿<#

.SYNOPSIS
	Account Management - Update Active Directory Users With Database Lookups
.DESCRIPTION
	Function that will query database for changes and then call predefined functions to take care of actual changes.
.NOTES
	File Name	:	update-usersFromDB.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 18, 2012
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	update-usersFromDB -account username
.EXAMPLE
	update-usersFromDB -account global

	
#>

function update-usersFromDB
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$account
	)

	$global_sql = "select v.username account, v.school_id container, v.password password, 
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
from v_stu_d_upd v
where v.grade >= 0"
	
	$single_sql = "select v.username account, v.school_id container, v.password password, 
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
from stu_d0 v WHERE v.username = @account"

	# Open the database connection
	$conn = New-MySQLConnection -server $dbserver -user $dbuser -password $dbpass -database $edage_db
	
	if ($account -eq 'global') {		
		# Query all records from the database
		$results = Invoke-MySQLQuery $global_sql -conn $conn

		Foreach ($result in $results) {
			$container_base = stu_ad_home_map -school_id $result.container
			$container = $container_base + '/' + $result.grade
			$stuClassGroup = $result.school_abbr + 'Students'
			$stuGradeGroup = $result.school_abbr + '-' + $result.grade

			if ($WhatIfPreference -eq $true) {
				enable-adAccount -account $result.account -container $container -description 'Temporarily Re-Enabled Acccount' -WhatIf
				update-adAccount -currentAccount $result.account -newAccount $result.account -container $container -password $result.password -displayName $result.displayName -email $result.email -type $result.type -idnum $result.idnum -lastName $result.lastName -firstName $result.firstName -middleInitial $result.middleInitial -initials $result.initials -title $result.title -phone $result.phone -department $result.department -company $result.company -city $result.city -state $result.state -zip $result.zip -street $result.street -homePhone $result.homePhone -homeAddress $result.homeAddress -WhatIf
				add-adGroupMember -group $stuClassGroup -account $result.account -WhatIf
				add-adGroupMember -group $stuGradeGroup -account $result.account -WhatIf
			} else {
				enable-adAccount -account $result.account -container $container -description 'Temporarily Re-Enabled Acccount'
				#Modified temporarily by Kris 10/9/13 to stop the overwriting of passwords.
				#update-adAccount -currentAccount $result.account -newAccount $result.account -container $container -password $result.password -displayName $result.displayName -email $result.email -type $result.type -idnum $result.idnum -lastName $result.lastName -firstName $result.firstName -middleInitial $result.middleInitial -initials $result.initials -title $result.title -phone $result.phone -department $result.department -company $result.company -city $result.city -state $result.state -zip $result.zip -street $result.street -homePhone $result.homePhone -homeAddress $result.homeAddress
				update-adAccount -currentAccount $result.account -newAccount $result.account -container $container -displayName $result.displayName -email $result.email -type $result.type -idnum $result.idnum -lastName $result.lastName -firstName $result.firstName -middleInitial $result.middleInitial -initials $result.initials -title $result.title -phone $result.phone -department $result.department -company $result.company -city $result.city -state $result.state -zip $result.zip -street $result.street -homePhone $result.homePhone -homeAddress $result.homeAddress
				add-adGroupMember -group $stuClassGroup -account $result.account
				add-adGroupMember -group $stuGradeGroup -account $result.account
			}
	 	}
	} else {
		# Query single record from the database
		$result = Invoke-MySQLQuery $single_sql -parameters @{account=$account} -conn $conn
		$container_base = stu_ad_home_map -school_id $result.container
		$container = $container_base + '/' + $result.grade
		$stuClassGroup = $result.school_abbr + 'Students'
		$stuGradeGroup = $result.school_abbr + '-' + $result.grade

		if ($WhatIfPreference -eq $true) {
			enable-adAccount -account $result.account -container $container -description 'Temporarily Re-Enabled Acccount' -WhatIf
			update-adAccount -currentAccount $result.account -newAccount $result.account -container $container -password $result.password -displayName $result.displayName -email $result.email -type $result.type -idnum $result.idnum -lastName $result.lastName -firstName $result.firstName -middleInitial $result.middleInitial -initials $result.initials -title $result.title -phone $result.phone -department $result.department -company $result.company -city $result.city -state $result.state -zip $result.zip -street $result.street -homePhone $result.homePhone -homeAddress $result.homeAddress -WhatIf
			add-adGroupMember -group $stuClassGroup -account $result.account -WhatIf
			add-adGroupMember -group $stuGradeGroup -account $result.account -WhatIf
		} else {
			enable-adAccount -account $result.account -container $container -description 'Temporarily Re-Enabled Acccount'
			update-adAccount -currentAccount $result.account -newAccount $result.account -container $container -password $result.password -displayName $result.displayName -email $result.email -type $result.type -idnum $result.idnum -lastName $result.lastName -firstName $result.firstName -middleInitial $result.middleInitial -initials $result.initials -title $result.title -phone $result.phone -department $result.department -company $result.company -city $result.city -state $result.state -zip $result.zip -street $result.street -homePhone $result.homePhone -homeAddress $result.homeAddress
			add-adGroupMember -group $stuClassGroup -account $result.account
			add-adGroupMember -group $stuGradeGroup -account $result.account
		}
	}
}