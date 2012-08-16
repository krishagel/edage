<#

.SYNOPSIS
	Account Management Launch Script
.DESCRIPTION
	Main launch file for all account management functions - command line parameter will send off to other functions
.NOTES
	File Name	:	start-accountManagement.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 10, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
.PARAMETER class
	Class of user.  Possible values: staff, student, contract
.PARAMETER type
	What type of account management changes to make.  Differs by class of user.  Common options include: add, delete, update, disable, enable.
.PARAMETER acct
	If a function needs a specific user account, pass it in with this parameter.
.EXAMPLE
	Z:\acct-management\start-accountManagement.ps1 -class staff -type add -acct HAGELKRI000
	Adds new staff account for an employee with the employee number: HAGELKRI000
.EXAMPLE
	Z:\acct-management\start-accountManagement.ps1 -class student -type update
	Updates all student accounts that have changes in the last day.  Will move containers and groups if necessary.

#>

##Set necessary script parameters

Param (
[parameter(Mandatory = $true)]
[string]$class,
[parameter(Mandatory = $true)]
[string]$type,
[string]$account
)

##Load Script Libraries
$lib_home = "Z:\Educational-Data-and-Account-Generation-Engine\modules\active-directory\inc\"
Get-ChildItem ($lib_home + "*.ps1") | ForEach-Object {. (Join-Path $lib_home $_.Name)} | Out-Null

##Get Current DB Time
$dbtime = get-currentDbTime

##Pause script for 1 second to ease reporting
Start-Sleep -s 1

##Script Controller

switch($class) {
	"staff" {
		switch ($type) {
			"add" {
				if ($account) {
					write-dblog -header "Staff Add" -message "Initialization" -account $acct
					add-adAccount -account $account -container $tmpOU -password Mar91977 -displayName "Hagel, Kris J" -email hagelk@tukwila.wednet.edu -type staff -idnum HAGELKRI000 -lastName Hagel -firstName Kris -middleInitial J -initials KJH -title Consultant -phone 253.590.6433 -department Consulting -company Self-Employed -city Tacoma -state WA -zip 98446 -street "14511 50th Ave E" -homePhone 253.530.3703 -homeAddress "14511 50th Ave E, Tacoma, WA 98446" -homeDrive D: 
					add-adGroup -group KrisTest -container $tmpOU
					add-adGroupMember -group KrisTest -account $account
					Write-Host "Adding a single staff member is not yet implemented"
				} else {
					write-dblog -header "Staff Add" -message "Initialization" -account "Global"
					Write-Host "Adding a staff members is not yet implemented"
				}
			}
			"delete" {
				if ($account) {
					write-dblog -header "Staff Delete" -message "Initialization" -account $acct
					remove-adAccount -account $account
					remove-adGroup -group KrisTest
				} else {
					write-dblog -header "Staff Delete" -message "Initialization" -account "Global"
					Write-Host "Deleting all necessary staff is not yet implemented"
				}
			}
			"update" {
				if ($account) {
					write-dblog -header "Staff Update" -message "Initialization" -account $acct
					remove-adGroupMember -group KrisTest -account $account
					Write-Host "Updating a single staff member is not yet implemented"
				} else {
					write-dblog -header "Staff Update" -message "Initialization" -account "Global"
					Write-Host "Updating all necessary staff is not yet implemented"
				}
			}
			"disable" {
				if ($account) {
					write-dblog -header "Staff Disable" -message "Initialization" -account $acct
					disable-adAccount -account $account -container $disabledUserOU
				} else {
					write-dblog -header "Staff Disable" -message "Initialization" -account $acct
					Write-Host "Updating all necessary staff is not yet implemented."
				}
			}
			"enable" {
				if ($account) {
					write-dblog -header "Staff Enable" -message "Initialization" -account $acct
					enable-adAccount -account $account -container $tmpOU -description Testing
					Write-Host "Enabling a single staff member is not yet implemented"
				} else {
					Write-Host "You must provide an account to enable a staff member."
				}
			}
			default {"'Type' is a required parameter"}
		}
	}
	"student" {
		switch ($type) {
			"add" {
				if ($account) {
					write-dblog -header "Student Add" -message "Initialization" -account $acct
					Write-Host "Adding a single student is not yet implemented"
				} else {
					write-dblog -header "Student Add" -message "Initialization" -account "Global"
					Write-Host "Adding all necessary students is not yet implemented"
				}
			}
			"delete" {
				if ($account) {
					write-dblog -header "Student Delete" -message "Initialization" -account $acct
					remove-adAccount -account $account
				} else {
					write-dblog -header "Student Delete" -message "Initialization" -account "Global"
					Write-Host "Deleting all necessary students is not yet implemented"
				}
			}
			"update" {
				if ($account) {
					write-dblog -header "Student Update" -message "Initialization" -account $acct
					Write-Host "Updating a single student is not yet implemented"
				} else {
					write-dblog -header "Student Update" -message "Initialization" -account "Global"
					Write-Host "Updating all necessary students is not yet implemented"
				}
			}
			"disable" {
				if ($account) {
					write-dblog -header "Student Disable" -message "Initialization" -account $acct
					disable-adAccount -account $account -container $disabledUserOU
				} else {
					Write-Host "You must provide an account to disable a student."
				}
			}
			"enable" {
				if ($account) {
					write-dblog -header "Student Enable" -message "Initialization" -account $acct
					Write-Host "Enabling a single student is not yet implemented"
				} else {
					Write-Host "You must provide an account to enable a student."
				}
			}
			default {"'Type' is a required parameter"}
		}
	}
	"contract" {
		switch ($type) {
			"add" {
				if ($account) {
					write-dblog -header "Contract Add" -message "Initialization" -account $acct
					Write-Host "Adding a single contract person is not yet implemented"
				} else {
					Write-Host "You must provide an account to add a contract person."
				}
			}
			"delete" {
				if ($account) {
					write-dblog -header "Contract Delete" -message "Initialization" -account $acct
					remove-adAccount -account $account
				} else {
					Write-Host "You must provide an account to delete a contract person."
				}
			}
			"update" {
				if ($account) {
					write-dblog -header "Contract Update" -message "Initialization" -account $acct
					Write-Host "Updating a single student is not yet implemented"
				} else {
					Write-Host "You must provide an account to update a contract person."
				}
			}
			"disable" {
				if ($account) {
					write-dblog -header "Contract Disable" -message "Initialization" -account $acct
					disable-adAccount -account $account -container $disabledUserOU
				} else {
					Write-Host "You must provide an account to disable a contract person."
				}
			}
			"enable" {
				if ($account) {
					write-dblog -header "Contract Enable" -message "Initialization" -account $acct
					Write-Host "Enabling a single student is not yet implemented"
				} else {
					Write-Host "You must provide an account to enable a contract person."
				}
			}
			default {"'Type' is a required parameter"}
		}
	}
	default {"'class' is a required parameter"}
}
send-accountReport -time $dbtime