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

# Load up the Quest Software AD Cmdlets
Add-PSSnapin Quest.ActiveRoles.ADManagement -ErrorAction SilentlyContinue

# Database Settings
$dbserver = "localhost"
$dbuser = "khagel"
$dbpass = "3wedCg12"
$log_db = "acct_log"
$acct_data_db = "data_mart"