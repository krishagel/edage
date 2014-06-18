<#

.SYNOPSIS
	Account Management - Add Member to Active Directory Group
.DESCRIPTION
	Function that will add a member to a group in Active Directory.  Only difference between this and native QAD cmdlets is that there is some error catching and logging enabled.
.NOTES
	File Name	:	add-adGroupMember.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 12, 2012
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	add-adGroupMember -group groupName -account username

	
#>

function add-adGroupMember
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$group,
	[string]$account
	)
	$error.Clear()
	
	try {
		if ($WhatIfPreference -eq $true) {
			Add-QADGroupMember $group $account -WhatIf 
		} else {
			Add-QADGroupMember $group $account 
		}
		write-dblog -header "Group Add Member Success" -message "Group member addition was successful in: $group." -account "$account"
	} 
	catch {
		$errMsg = "Group member addition error for group: $group = $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Group Add Member Error" -message $errMsg -account "$account"
	}
}