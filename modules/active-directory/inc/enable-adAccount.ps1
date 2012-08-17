<#

.SYNOPSIS
	Account Management - Enable Active Directory Account
.DESCRIPTION
	Function that will enable a user in Active Directory.  
		This function will move the user back to a specific container, set their expiration to null and enable the account.
		Only difference between this and native QAD cmdlets is that there is some error catching and logging enabled.
.NOTES
	File Name	:	enable-adAccount.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 15, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
.EXAMPLE
	enable-adAccount -account username -container 'domain/ou/container' -description 'Usually Title Of Account'

	
#>

function enable-adAccount
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$account,
	[string]$container,
	[string]$description
	)
	$error.Clear()
	
	try {
		if ($WhatIfPreference -eq $true) {
			Enable-QADUser -Identity $account -WhatIf
			Set-QADUser -Identity $account -Description $description -AccountExpires $null -WhatIf
			Move-QADObject -Identity $account -NewParentContainer $container -WhatIf
		} else {
			Enable-QADUser -Identity $account
			Set-QADUser -Identity $account -Description $description -AccountExpires $null
			Move-QADObject -Identity $account -NewParentContainer $container
		}
		write-dblog -header "Acct Enable Success" -message "Enabling Account was successful for user: $account." -account "$account"
	} 
	catch {
		$errMsg = "Enabling user error= $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Acct Disable Error" -message $errMsg -account "$account"
	}
}