<#

.SYNOPSIS
	Account Management - Reset User Password
.DESCRIPTION
	Function that will reset a user password in Active Directory.  
		Only difference between this and native QAD cmdlets is that there is some error catching and logging enabled.
.NOTES
	File Name	:	reset-adPwd.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 15, 2012
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	reset-adPwd -user username -password newSecretPassword
	
#>

function reset-adPwd
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$user,
	[string]$password
	)
	$error.Clear()
	
	try {
		if ($WhatIfPreference -eq $true) {
			Set-QADUser $user -UserPassword $password -WhatIf
		} else {
			Set-QADUser $user -UserPassword $password		
		}
		write-dblog -header "Pwd Reset Success" -message "Password Reset was successful for user: $user." -account "$user"
	} 
	catch {
		$errMsg = "Password reset error= $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Pwd Reset Error" -message $errMsg -account "$user"
	}
}