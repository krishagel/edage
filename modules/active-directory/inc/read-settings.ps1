<#

.SYNOPSIS
	Account Management Settings File
.DESCRIPTION
	File containing global settings for all account management scripts.  Things like logging, database server and any other settings.
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

# Database Settings
$dbserver = "localhost"
$dbuser = "khagel"
$dbpass = "3wedCg12"
$log_db = "edage_logs"
$log_tbl = "acct_gen"
$acct_data_db = "data_mart"