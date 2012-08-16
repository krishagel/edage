<#

.SYNOPSIS
	Account Management - Remove Active Directory Account
.DESCRIPTION
	Function that will remove a user from Active Directory.  
		Main difference between this and native QAD cmdlets is that there is some error catching and logging enabled.
.NOTES
	File Name	:	remove-adAccount.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 15, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
	
#>

function remove-adAccount
{
	Param (
	[string]$account
	)
	$error.Clear()
	
	try {
		Remove-QADObject $account -Force
		write-dblog -header "Acct Removal Success" -message "Account Removal was successful for user: $account." -account "$account"
	} 
	catch {
		$errMsg = "Removing user error= $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Acct Removal Error" -message $errMsg -account "$account"
	}
}