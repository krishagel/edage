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
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
	
#>

function remove-adGroup
{
	Param (
	[string]$group
	)
	$error.Clear()
	
	try {
		Remove-QADObject $group -Force > $result
		write-dblog -header "Group Remove Success" -message "Group removal was successful." -account "$group"
	} 
	catch {
		$errMsg = "Group removal error= $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Group Removal Error" -message $errMsg -account "$group"
	}
}