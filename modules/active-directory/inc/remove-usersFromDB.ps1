<#

.SYNOPSIS
	Account Management - Remove Active Directory Users With Database Lookups
.DESCRIPTION
	Function that will query database for changes and then call predefined functions to take care of actual changes.
.NOTES
	File Name	:	remove-usersFromDB.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 16, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
.EXAMPLE
	remove-usersFromDB
	
#>

function remove-usersFromDB
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$bypass
	)

	if ($bypass -eq 'yes') {
		$delete_limit = 5000
	} else {
		$delete_limit = 150
	}

	$global_sql = "select v.username account from v_stu_d_rem v"
	$count_sql = "select count(v.username) counter from v_stu_d_rem v"
	
	# Open the database connection
	$conn = New-MySQLConnection -server $dbserver -user $dbuser -password $dbpass -database $edage_db
	
		# Query all records from the database
		$results = Invoke-MySQLQuery $global_sql -conn $conn
		$count_results = Invoke-MySQLQuery $count_sql -conn $conn

		if ($count_results.counter -gt $delete_limit) {
			write-dblog -header "USER DELETE FAILURE" -message "User Delete attempted to delete more records than allowed.  The remove-usersFromDB cmdlet can be called with the -bypass yes flag called if this deletion was intentional." -account "global"
		} else {
			Foreach ($result in $results) {
				if ($WhatIfPreference -eq $true) {
					remove-adAccount -account $result.account -WhatIf
				} else {
					remove-adAccount -account $result.account
				}
		 	}		
		}
}