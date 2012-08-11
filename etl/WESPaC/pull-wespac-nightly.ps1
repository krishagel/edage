<#

.SYNOPSIS
	WESPaC Nightly Data Pull
.DESCRIPTION
	File launching Kettle data conversion that will loop continuously until it has completed.  It is best to set this file as a scheduled tasks that can't run for more than 12 hours in case of WESPaC db problems.
.NOTES
	File Name	:	pull-wespac-nightly.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 10, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
	
#>

# Verification Database Connection Information
$server = 'localhost'
$user = 'khagel'
$pass = '3wedCg12'
$database = 'data_staging'

Import-Module mysqllib

$conn = New-MySQLConnection -server $server -user $user -password $pass -database $database

$base_number = 10000

do {
	# run conversion
	Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\etl\WESPaC\conversions\WESPaC-Nightly-Data-Pull.kjb" :level=debug > Z:\logs\wespac_nightly-pull.log

	$res = Invoke-MySQLQuery "SELECT count('family-id') as howMany from family_guardian" -conn $conn
	$count = $res.howMany

}
until ($count -gt $base_number)