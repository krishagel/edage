<#

.SYNOPSIS
	Account Management - Update New Student Passwords
.DESCRIPTION
	Function that will read csv file for new students and reset the passwords of those accounts to get Google Apps Password Sync to get the password correct.
	File Name	:	update-newStudentPasswords.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	January 3, 2014
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	./updateNewStudentPasswords
	
#>
import-module ac*
$yesterday = "{0:yyyyMMdd}" -f (get-date).AddDays(-1)
$fileToRead = "Z:\Educational-Data-and-Account-Generation-Engine\modules\google-apps-directory-sync\tsd_google_student_"+ $yesterday+".csv"
Import-Csv $fileToRead | ForEach-Object {Set-AdAccountPassword -Identity $_.'emailAddress'.Split("@")[0] -Reset -NewPassword (ConvertTo-SecureString -AsPlainText $_.password -Force)}