<#

.SYNOPSIS
	WESPaC Nightly Data Pull
.DESCRIPTION
	File launching Kettle data conversion that will loop continuously until it has completed.  
	It is best to set this file as a scheduled tasks that can't run for more than 12 hours in case of WESPaC db problems.
	Also, all log files are now archived and destroyed after 14 days.
.NOTES
	File Name	:	pull-wespac-nightly.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 10, 2012
.LINK
	https://github.com/krishagel/edage
	
#>

# Include Secure Database Settings (This file is usually housed in Active Directory Module)
. "Z:\edage-secure\read-secureSettings.ps1"

Import-Module mysqllib

$conn = New-MySQLConnection -server $dbserver -user $dbuser -password $dbpass -database $staging_db

$main_base_number = 10000

# Archive Log Files
$nowClean = Get-Date -Format Mdyyyy
$newName1 = $nowClean + '-wespac_nightly-pull.log'
$newName2 = $nowClean + '-wespac_demographics-edage.log'
$newName3 = $nowClean + '-wespac_nightly-optional-pull.log'
Rename-Item Z:\logs\wespac_nightly-pull.log $newName1
Rename-Item Z:\logs\wespac_demographics-edage.log $newName2
Rename-Item Z:\logs\wespac_nightly-optional-pull.log $newName3

# Remove Log Files Older Than 14 Days
$now = Get-Date
$folder = "Z:\logs"
$lastEdit = $now.AddDays(-14)
$files = Get-Childitem $folder -Recurse | Where {$_.LastWriteTime -le "$lastEdit"}
foreach ($file in $files) {
	if ($file -ne $NULL){
        Remove-Item $file.FullName | out-null
    }
}

# Execute Conversions



do {
	# run main data conversion
	Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\etl\WESPaC\conversions\WESPaC-Nightly-Data-Pull.kjb" :level=debug > Z:\logs\wespac_nightly-pull.log

	$res = Invoke-MySQLQuery "SELECT count('family-id') as howMany from family_guardian" -conn $conn
	$count = $res.howMany
}
until ($count -gt $main_base_number)

# run edage daily changes conversion
Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\etl\WESPaC\conversions\WESPaC-Demographics-Job.kjb" :level=debug > Z:\logs\wespac_demographics-edage.log

# run optional data conversion
Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\etl\WESPaC\conversions\WESPaC-Nightly-Optional-Data-Pull.kjb" :level=debug > Z:\logs\wespac_nightly-optional-pull.log