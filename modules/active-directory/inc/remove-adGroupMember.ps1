<#

.SYNOPSIS
	Account Management - Remove Member from Active Directory Group
.DESCRIPTION
	Function that will remove a member from a group in Active Directory.  Only difference between this and native QAD cmdlets is that there is some error catching and logging enabled.
.NOTES
	File Name	:	remove-adGroupMember.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 12, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
.EXAMPLE
	remove-adGroupMember -group groupName -account username
	
#>

function remove-adGroupMember
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$group,
	[string]$account
	)
	$error.Clear()
	
	try {
		if ($WhatIfPreference -eq $true) {
			Remove-QADGroupMember $group $account -WhatIf > $result
		} else {
			Remove-QADGroupMember $group $account > $result		
		}
		write-dblog -header "Group Remove Member Success" -message "Group member removal was successful in: $group." -account "$account"
	} 
	catch {
		$errMsg = "Group member removal error for group: $group = $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Group Remove Member Error" -message $errMsg -account "$account"
	}
}