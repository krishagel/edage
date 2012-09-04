<#

.SYNOPSIS
	Account Management - Create User Home Directory Based On Lookup
.DESCRIPTION
	Function that will query database for changes and then call predefined functions to take care of actual changes.
.NOTES
	File Name	:	create-userHomeDir.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 23, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
.EXAMPLE
	create-userHomeDir -user SXXXXXXX -class student -lookup 136
	Create user home directory for user account SXXXXXXX who is a student and exists at location 136
	
#>

function create-userHomeDir
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$user,
	[string]$class,
	[string]$lookup
	)

	if ($class -eq 'student') {
		$homedir_container = stu_home_folder_map -school_id $lookup
	} else {
		$homedir_container = ''
	}

	$new_home = Join-Path $homedir_container -ChildPath $user

	try {
		if ($WhatIfPreference -eq $true) {
			New-Item $new_home -Type directory -WhatIf
			$access = Get-Acl $new_home -WhatIf
			$FileSystemRights = [System.Security.AccessControl.FileSystemRights]"FullControl"
			$AccessControlType = [System.Security.AccessControl.AccessControlType]"Allow"
			$InheritanceFlags = [System.Security.AccessControl.InheritanceFlags]"ContainerInherit, ObjectInherit"
			$PropagationFlags = [System.Security.AccessControl.PropagationFlags]"None"
			$IdentityReference = $user
			$FileSystemAccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule ($IdentityReference, $FileSystemRights, $InheritanceFlags, $PropagationFlags, $AccessControlType)
			$access.AddAccessRule($FileSystemAccessRule)
			Set-Acl $new_home $access -WhatIf
		} else {
			New-Item $new_home -Type directory
			$access = Get-Acl $new_home
			$FileSystemRights = [System.Security.AccessControl.FileSystemRights]"FullControl"
			$AccessControlType = [System.Security.AccessControl.AccessControlType]"Allow"
			$InheritanceFlags = [System.Security.AccessControl.InheritanceFlags]"ContainerInherit, ObjectInherit"
			$PropagationFlags = [System.Security.AccessControl.PropagationFlags]"None"
			$IdentityReference = $user
			$FileSystemAccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule ($IdentityReference, $FileSystemRights, $InheritanceFlags, $PropagationFlags, $AccessControlType)
			$access.AddAccessRule($FileSystemAccessRule)
			Set-Acl $new_home $access
		}
		write-dblog -header "User Home Creation Success" -message "User Home Creation was succcesful in: $homedir_container." -account "$user"
	} 
	catch {
		$errMsg = "User home creation error for group: $group = $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "User Home Creation Error" -message $errMsg -account "$user"
	}	
}