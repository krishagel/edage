<#

.SYNOPSIS
	Account Management Daily Scheduled Task Script
.DESCRIPTION
	Main launch file for all account management functions - command line parameter will send off to other functions
.NOTES
	File Name	:	start-dailySchedule.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 17, 2012
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	Setup a schedule task in Windows that runs this script and starts in this directory.

#>

#You will need to update the path with the location of the start-accountManagement script

Invoke-Expression "Z:\Educational-Data-and-Account-Generation-Engine\modules\active-directory\start-accountManagement.ps1 -class student -type add"
Invoke-Expression "Z:\Educational-Data-and-Account-Generation-Engine\modules\active-directory\start-accountManagement.ps1 -class student -type disable"
Invoke-Expression "Z:\Educational-Data-and-Account-Generation-Engine\modules\active-directory\start-accountManagement.ps1 -class student -type update"
Invoke-Expression "Z:\Educational-Data-and-Account-Generation-Engine\modules\active-directory\start-accountManagement.ps1 -class global -type update-courses"
Invoke-Expression "Z:\Educational-Data-and-Account-Generation-Engine\modules\active-directory\start-accountManagement.ps1 -class global -type update-enrollments"