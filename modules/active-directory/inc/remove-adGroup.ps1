<#

.SYNOPSIS
	Account Management - Remove Active Directory Group
.DESCRIPTION
	Function that will remove a group from Active Directory.  Only difference between this and native QAD cmdlets is that there is some error catching and logging enabled.
.NOTES
	File Name	:	remove-adGroup.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 12, 2012
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	remove-adGroup -group groupName
	
#>

function remove-adGroup
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$group
	)
	$error.Clear()
	
	try {
		if ($WhatIfPreference -eq $true) {
			Remove-QADObject $group -Force -WhatIf
		} else {
			Remove-QADObject $group -Force
		}
		write-dblog -header "Group Remove Success" -message "Group removal was successful." -account "$group"
	} 
	catch {
		$errMsg = "Group removal error= $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Group Removal Error" -message $errMsg -account "$group"
	}
}