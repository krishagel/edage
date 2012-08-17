﻿<#

.SYNOPSIS
	Account Management Settings File
.DESCRIPTION
	File containing global settings for all account management scripts.  Things like logging, database server and any other settings requiring passwords are in the secure file.
.NOTES
	File Name	:	read-settings.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 10, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
	
#>

# Load the Quest Software AD Cmdlets
Add-PSSnapin Quest.ActiveRoles.ADManagement -ErrorAction SilentlyContinue

# Load the SQLPSX Module to be able to use MySQL database in scripts
Import-Module mysqllib

# Days since an account has been disabled before it is removed
$disabled_days = 365

# If you store secure settings outside project root, include it here.  By default this is unnecessary and you can just comment this out or remove it.
. "Z:\edage-secure\read-secureSettings.ps1"

# Disabled User OU

$disabledUserOU = 'tsd.int/TSD/Inactive Accounts'
$tmpOU = 'tsd.int/TSD/Students'

# Active Directory School Mapping Function

function stu_ad_home_map {
	Param (
		[string]$school_id
	)
	switch ($school_id) {
		126 {$result = 'tsd.int/TSD/Students/Elementary/CAS'}
		135 {$result = 'tsd.int/TSD/Students/Elementary/THO'}
		188 {$result = 'tsd.int/TSD/Students/Elementary/TUK'}
		264 {$result = 'tsd.int/TSD/Students/MiddleSchool'}
		448 {$result = 'tsd.int/TSD/Students/HighSchool'}
		default {$result = 'tsd.int/TSD/Students/OtherStudents'}
	}
	return $result
}