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
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
	
#>

function add-adGroupMember
{
	Param (
	[string]$group,
	[string]$user
	)
	$error.Clear()
	
	try {
		Add-QADGroupMember $group $user > $result
		write-dblog -header "Group Add Member Success" -message "Group member addition was successful in: $group." -account "$user"
	} 
	catch {
		$errMsg = "Group member addition error for group: $group = $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Group Add Member Error" -message $errMsg -account "$user"
	}
}