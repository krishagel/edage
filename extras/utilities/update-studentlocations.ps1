<#

.SYNOPSIS
	Yearly Roll Over File Cleanup Utility
.DESCRIPTION
	File that will remove all 6th and 9th grade students from their old school groups and move their home folders to the new server.
	Make sure to run reset-homeFolderPermissions.ps1 in modules/active directory/inc to cleanup the folders when it's done.
.NOTES
	File Name	:	update-studentlocations.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	November 2, 2013
.LINK
	https://github.com/krishagel/edage
	
#>

# Load the Quest Software AD Cmdlets
Add-PSSnapin Quest.ActiveRoles.ADManagement -ErrorAction SilentlyContinue

#Check Foster For Kids with Showalter Home Drives & Still in Showalter Primary Group

$fosstudents = get-QADUser -SearchRoot 'OU=FOS,OU=Students,OU=TSD,DC=tsd,DC=int' -IndirectMemberOf 'CN=SHO-8,OU=Groups,OU=SHO,OU=Students,OU=TSD,DC=tsd,DC=int'
$fosstudents | ForEach-Object { Remove-QADGroupMember -Identity 'CN=SHO-8,OU=Groups,OU=SHO,OU=Students,OU=TSD,DC=tsd,DC=int' -Member $_.samaccountname }
$fosstudents | ForEach-Object { Remove-QADGroupMember -Identity 'CN=SHOStudents,OU=Groups,OU=SHO,OU=Students,OU=TSD,DC=tsd,DC=int' -Member $_.samaccountname }
$fosstudents | ForEach-Object { 
	$oldhome = '\\tsd-data-6-12\HomeSHO\' + $_.samaccountname
	$newhome = '\\tsd-data-6-12\HomeFOS\' + $_.samaccountname
	Move-Item $oldhome $newhome 
}

#Check Showalter for kids with Tukwila, Thorndyke, and Cascade View home drives and primary groups

$shotuk_students = get-QADUser -SearchRoot 'OU=SHO,OU=Students,OU=TSD,DC=tsd,DC=int' -IndirectMemberOf 'CN=TUK-5,OU=Groups,OU=TUK,OU=Students,OU=TSD,DC=tsd,DC=int'
$shotuk_students | ForEach-Object { Remove-QADGroupMember -Identity 'CN=TUK-5,OU=Groups,OU=TUK,OU=Students,OU=TSD,DC=tsd,DC=int' -Member $_.samaccountname }
$shotuk_students | ForEach-Object { Remove-QADGroupMember -Identity 'CN=TUKStudents,OU=Groups,OU=TUK,OU=Students,OU=TSD,DC=tsd,DC=int' -Member $_.samaccountname }
$shotuk_students | ForEach-Object { 
	$oldhome = '\\tsd-data-p-5\HomeTUK\' + $_.samaccountname
	$newhome = '\\tsd-data-6-12\HomeSHO\' + $_.samaccountname
	Move-Item $oldhome $newhome 
}

$shocas_students = get-QADUser -SearchRoot 'OU=SHO,OU=Students,OU=TSD,DC=tsd,DC=int' -IndirectMemberOf 'CN=CAS-5,OU=Groups,OU=CAS,OU=Students,OU=TSD,DC=tsd,DC=int'
$shocas_students | ForEach-Object { Remove-QADGroupMember -Identity 'CN=CAS-5,OU=Groups,OU=CAS,OU=Students,OU=TSD,DC=tsd,DC=int' -Member $_.samaccountname }
$shocas_students | ForEach-Object { Remove-QADGroupMember -Identity 'CN=CASStudents,OU=Groups,OU=CAS,OU=Students,OU=TSD,DC=tsd,DC=int' -Member $_.samaccountname }
$shocas_students | ForEach-Object { 
	$oldhome = '\\tsd-data-p-5\HomeCAS\' + $_.samaccountname
	$newhome = '\\tsd-data-6-12\HomeSHO\' + $_.samaccountname
	Move-Item $oldhome $newhome 
}

$shotho_students = get-QADUser -SearchRoot 'OU=SHO,OU=Students,OU=TSD,DC=tsd,DC=int' -IndirectMemberOf 'CN=THO-5,OU=Groups,OU=THO,OU=Students,OU=TSD,DC=tsd,DC=int'
$shotho_students | ForEach-Object { Remove-QADGroupMember -Identity 'CN=THO-5,OU=Groups,OU=THO,OU=Students,OU=TSD,DC=tsd,DC=int' -Member $_.samaccountname }
$shotho_students | ForEach-Object { Remove-QADGroupMember -Identity 'CN=THOStudents,OU=Groups,OU=THO,OU=Students,OU=TSD,DC=tsd,DC=int' -Member $_.samaccountname }
$shotho_students | ForEach-Object { 
	$oldhome = '\\tsd-data-p-5\HomeTHO\' + $_.samaccountname
	$newhome = '\\tsd-data-6-12\HomeSHO\' + $_.samaccountname
	Move-Item $oldhome $newhome
}
