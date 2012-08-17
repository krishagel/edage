<#

.SYNOPSIS
	Account Management - Add Active Directory Group
.DESCRIPTION
	Function that will add a group to Active Directory.  Only difference between this and native QAD cmdlets is that there is some error catching and logging enabled.
.NOTES
	File Name	:	add-adGroup.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 12, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
.EXAMPLE
	add-adGroup -group newGroupName -container 'domain/ou/Students'

	
#>

function add-adGroup
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$group,
	[string]$container,
	[string]$description
	)
	$error.Clear()
	
	try {
		if ($WhatIfPreference -eq $true) {
			New-QADGroup -Name $group -ParentContainer $container -Description $description -samAccountName $group -grouptype 'Security' -groupscope 'Global' -WhatIf > $result
		} else {
			New-QADGroup -Name $group -ParentContainer $container -Description $description -samAccountName $group -grouptype 'Security' -groupscope 'Global' > $result
		}
		write-dblog -header "Group Add Success" -message "Group addition was successful in: $container." -account "$group"
	} 
	catch {
		$errMsg = "Group addition error= $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Group Add Error" -message $errMsg -account "$group"
	}
}