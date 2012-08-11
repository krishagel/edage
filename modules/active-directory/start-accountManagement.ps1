﻿<#

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
[string]$acct
)

##Load Script Libraries
$lib_home = "Z:\acct-management\inc\"
Get-ChildItem ($lib_home + "*.ps1") | ForEach-Object {. (Join-Path $lib_home $_.Name)} | Out-Null

##Script Controller

switch($class) {
	"staff" {
		switch ($type) {
			"add" {
				if ($acct) {
					{Write-Host "Adding a single staff member is not yet implemented"}
				} else {
					{Write-Host "Adding all necessary staff is not yet implemented"}
				}
			}
			"delete" {
				if ($acct) {
					{Write-Host "Deleting a single staff member is not yet implemented"}
				} else {
					{Write-Host "Deleting all necessary staff is not yet implemented"}
				}
			}
			"update" {
				if ($acct) {
					{Write-Host "Updating a single staff member is not yet implemented"}
				} else {
					{Write-Host "Updating all necessary staff is not yet implemented"}
				}
			}
			"disable" {
				if ($acct) {
					{Write-Host "Updating a single staff member is not yet implemented"}
				} else {
					{Write-Host "You must provide an account to disable a stafft member."}
				}
			}
			"enable" {
				if ($acct) {
					{Write-Host "Enabling a single student is not yet implemented"}
				} else {
					{Write-Host "You must provide an account to enable a staff member."}
				}
			}
			default {"'Type' is a required parameter"}
		}
	}
	"student" {
		switch ($type) {
			"add" {
				if ($acct) {
					{Write-Host "Adding a single student is not yet implemented"}
				} else {
					{Write-Host "Adding all necessary students is not yet implemented"}
				}
			}
			"delete" {
				if ($acct) {
					{Write-Host "Deleting a single student is not yet implemented"}
				} else {
					{Write-Host "Deleting all necessary students is not yet implemented"}
				}
			}
			"update" {
				if ($acct) {
					{Write-Host "Updating a single student is not yet implemented"}
				} else {
					{Write-Host "Updating all necessary students is not yet implemented"}
				}
			}
			"disable" {
				if ($acct) {
					{Write-Host "Updating a single student is not yet implemented"}
				} else {
					{Write-Host "You must provide an account to disable a student."}
				}
			}
			"enable" {
				if ($acct) {
					{Write-Host "Enabling a single student is not yet implemented"}
				} else {
					{Write-Host "You must provide an account to enable a student."}
				}
			}
			default {"'Type' is a required parameter"}
		}
	}
	"contract" {
		switch ($type) {
			"add" {
				if ($acct) {
					{Write-Host "Adding a single contract person is not yet implemented"}
				} else {
					{Write-Host "You must provide an account to add a contract person."}
				}
			}
			"delete" {
				if ($acct) {
					{Write-Host "Deleting a single student is not yet implemented"}
				} else {
					{Write-Host "You must provide an account to delete a contract person."}
				}
			}
			"update" {
				if ($acct) {
					{Write-Host "Updating a single student is not yet implemented"}
				} else {
					{Write-Host "You must provide an account to update a contract person."}
				}
			}
			"disable" {
				if ($acct) {
					{Write-Host "Updating a single student is not yet implemented"}
				} else {
					{Write-Host "You must provide an account to disable a contract person."}
				}
			}
			"enable" {
				if ($acct) {
					{Write-Host "Enabling a single student is not yet implemented"}
				} else {
					{Write-Host "You must provide an account to enable a contract person."}
				}
			}
			default {"'Type' is a required parameter"}
		}
	}
	default {"'class' is a required parameter"}
}