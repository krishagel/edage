<#

.SYNOPSIS
	Get Current Database Server Time
.DESCRIPTION
	Function that will query the datbase for its current time.  Will be used later for generating reports.
.NOTES
	File Name	:	get-currentDbTime.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 11, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
	
#>

function get-currentDbTime 
{

	# Open the database connection
	$conn = New-MySQLConnection -server $dbserver -user $dbuser -password $dbpass -database $log_db
	
	# Insert log record into the database
	$result = Invoke-MySQLQuery "select NOW() currentDbTime" -conn $conn	
 	return $result.currentDbTime

}