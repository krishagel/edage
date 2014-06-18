<#

.SYNOPSIS
	Account Management - Reset Home Folder Permissions
.DESCRIPTION
	Function that will iterate through a folder of home directories and then will reset those permissions to verify they are correct.
.NOTES
	File Name	:	reset-homeFolderPermissions.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 21, 2012
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	reset-homeFolderPermissions.ps1 -location "\\file\path\to\folders"
	
#>


	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[string]$location
	)

	Add-PSSnapin Quest.ActiveRoles.ADManagement -ErrorAction SilentlyContinue

	$homes = Get-ChildItem $location
	$i = 1
	foreach ($folder in $homes) {
		$username = ’TSD\’+$folder.Name
		if ($username.contains("S0")) {
			if(Get-QADUser $folder.Name){
				$homedir = Join-Path $location -ChildPath $folder.name
				$access = Get-Acl $homedir
				$FileSystemRights = [System.Security.AccessControl.FileSystemRights]"FullControl"
				$AccessControlType = [System.Security.AccessControl.AccessControlType]"Allow"
				$InheritanceFlags = [System.Security.AccessControl.InheritanceFlags]"ContainerInherit, ObjectInherit"
				$PropagationFlags = [System.Security.AccessControl.PropagationFlags]"None"
				$IdentityReference = $username
				$FileSystemAccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule ($IdentityReference, $FileSystemRights, $InheritanceFlags, $PropagationFlags, $AccessControlType)
				$access.AddAccessRule($FileSystemAccessRule)
				Set-Acl $homedir $access
				#Remove Bad Users
				$access.Access | where{$_.IdentityReference -like "*S-1*" -and $_.isinherited -like $false} | foreach{
		            $access.purgeaccessrules($_.IdentityReference); 
          			Set-Acl -AclObject $access -path $homedir;
			    }
				Write-Host "Reset Folder Permissions"$folder.name
			} else {
				$old_folder = Join-Path $location -ChildPath $folder.name
				$disabled_folder = 'DisabledUsers/'+$folder.name
				$new_folder = Join-Path $location -ChildPath $disabled_folder
				Move-Item $old_folder $new_folder
				Write-Host "Moved Folder To Disabled"$folder.name
			} 
		}
	}