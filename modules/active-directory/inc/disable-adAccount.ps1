﻿<#

.SYNOPSIS
	Account Management - Disable Active Directory Account
.DESCRIPTION
	Function that will disable a user in Active Directory.  
		This function will move the user to a specific dump container, set their expiration at 180 days and disable the account.
		Only difference between this and native QAD cmdlets is that there is some error catching and logging enabled.
.NOTES
	File Name	:	disable-adAccount.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 15, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
	
#>

function disable-adAccount
{
	Param (
	[string]$account,
	[string]$container
	)
	$error.Clear()
	
	try {
		Move-QADObject -Identity $account -NewParentContainer $container
		$expireDate = [datetime]::Now.AddDays(180)
		Set-QADUser -Identity $account -Description $expireDate -AccountExpires $expireDate
		Disable-QADUser -Identity $account
		write-dblog -header "Acct Disable Success" -message "Disabling Account was successful for user: $account." -account "$account"
	} 
	catch {
		$errMsg = "Disabling user error= $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Acct Disable Error" -message $errMsg -account "$account"
	}
}