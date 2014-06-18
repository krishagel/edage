<#

.SYNOPSIS
	Account Management Settings File
.DESCRIPTION
	File containing global settings for all account management scripts.  Things like logging, database server and any other settings requiring passwords are in the secure file.
.NOTES
	File Name	:	read-settings.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 10, 2012
.LINK
	https://github.com/krishagel/edage
	
#>

# Load the Quest Software AD Cmdlets
Add-PSSnapin Quest.ActiveRoles.ADManagement -ErrorAction SilentlyContinue

# Load the SQLPSX Module to be able to use MySQL database in scripts
Import-Module mysqllib
Add-Type -Path 'C:\Program Files (x86)\MySQL\MySQL Connector Net 6.7.4\Assemblies\v4.5\MySql.Data.dll'

# Days since an account has been disabled before it is removed
$disabled_days = 180

# If you store secure settings outside project root, include it here.  By default this is unnecessary and you can just comment this out or remove it.
. "Z:\edage-secure\read-secureSettings.ps1"

# Disabled User OU

$disabledUserOU = 'tsd.int/TSD/Inactive Accounts'

# Course Groups Sub-Container

$courseGroupContainer = 'Groups/Course_Groups'

# Active Directory School Mapping Function

function stu_ad_home_map {
	Param (
		[string]$school_id
	)
	switch ($school_id) {
		126 {$result = 'tsd.int/TSD/Students/CAS'}
		135 {$result = 'tsd.int/TSD/Students/THO'}
		188 {$result = 'tsd.int/TSD/Students/TUK'}
		264 {$result = 'tsd.int/TSD/Students/SHO'}
		448 {$result = 'tsd.int/TSD/Students/FOS'}
		default {$result = 'tsd.int/TSD/Students/OtherStudents'}
	}
	return $result
}

function stu_home_folder_map {
	Param (
		[string]$school_id
	)
	switch ($school_id) {
		126 {$result = '\\tsd-data-p-5\HomeCAS'}
		135 {$result = '\\tsd-data-p-5\HomeTHO'}
		188 {$result = '\\tsd-data-p-5\HomeTUK'}
		264 {$result = '\\tsd-data-6-12\HomeSHO'}
		448 {$result = '\\tsd-data-6-12\HomeFOS'}
	}
	return $result
}