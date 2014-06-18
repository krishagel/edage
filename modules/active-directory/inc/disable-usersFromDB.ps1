<#

.SYNOPSIS
	Account Management - Disable Active Directory Users With Database Lookups
.DESCRIPTION
	Function that will query database for changes and then call predefined functions to take care of actual changes.
.NOTES
	File Name	:	disable-usersFromDB.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 16, 2012
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	disable-usersFromDB
	
#>

function disable-usersFromDB
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$bypass
	)

	if ($bypass -eq 'yes') {
		$disable_limit = 5000
	} else {
		$disable_limit = 150
	}

	$global_sql = "select v.username account from v_stu_d_rem v"
	$count_sql = "select count(v.username) counter from v_stu_d_rem v"
	
	# Open the database connection
	$conn = New-MySQLConnection -server $dbserver -user $dbuser -password $dbpass -database $edage_db
	
		# Query all records from the database
		$results = Invoke-MySQLQuery $global_sql -conn $conn
		$count_results = Invoke-MySQLQuery $count_sql -conn $conn

		if ($count_results.counter -gt $disable_limit) {
			write-dblog -header "USER DISABLE FAILURE" -message "User Disable attempted to disable more records than allowed.  The disable-usersFromDB cmdlet can be called with the -bypass yes flag called if this was intentional." -account "global"
		} else {
			Foreach ($result in $results) {
				if ($WhatIfPreference -eq $true) {
					disable-adAccount -account $result.account -container $disabledUserOU -WhatIf 
				} else {
					disable-adAccount -account $result.account -container $disabledUserOU
				}
		 	}		
		}
}