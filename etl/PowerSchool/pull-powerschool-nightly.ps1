<#

.SYNOPSIS
	PowerSchool Nightly Data Pull
.DESCRIPTION
	File launching Kettle data conversion that will loop continuously until it has completed.  
	It is best to set this file as a scheduled tasks that can't run for more than 12 hours in case of PowerSchool db problems.
	Also, all log files are now archived and destroyed after 14 days.
.NOTES
	File Name	:	pull-powerschool-nightly.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	September 4, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
	
#>

# Include Secure Database Settings (This file is usually housed in Active Directory Module)
. "E:\edage-secure\read-secureSettings.ps1"

# Archive Log Files
$nowClean = Get-Date -Format Mdyyyy
$newName1 = $nowClean + '-powerschool_demographics-edage.log'
Rename-Item E:\edage-logs\powerschool_demographics-edage.log $newName1

# Remove Log Files Older Than 14 Days
$now = Get-Date
$folder = "E:\edage-logs"
$lastEdit = $now.AddDays(-14)
$files = Get-Childitem $folder -Recurse | Where {$_.LastWriteTime -le "$lastEdit"}
foreach ($file in $files) {
	if ($file -ne $NULL){
        Remove-Item $file.FullName | out-null
    }
}

# Execute Conversions

# run edage daily changes conversion
E:\Pentaho\data-integration-42\Kitchen.bat /file:"E:\Educational-Data-and-Account-Generation-Engine\etl\PowerSchool\conversions\PowerSchool-Demographics-Job.kjb" :level=debug > E:\edage-logs\powerschool_demographics-edage.log