<#

.SYNOPSIS
	Account Management - Update User Home Directory 
.DESCRIPTION
	Function that will check to make sure home directory is in the right place, and if not it will move it there.
.NOTES
	File Name	:	update-userHomeLocation.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 23, 2012
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	update-userHomeLocation -user SXXXXXXX -class student -lookup 136
	Create user home directory for user account SXXXXXXX who is a student and exists at location 136
	
#>

function update-userHomeLocation
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
	
	$testpath0 = Join-Path '\\tsd-data-p-5\HomeCAS' -ChildPath $user
	$testpath1 = Join-Path '\\tsd-data-p-5\HomeCAS\DisabledUsers' -ChildPath $user
	$testpath2 = Join-Path '\\tsd-data-6-12\HomeFOS' -ChildPath $user
	$testpath3 = Join-Path '\\tsd-data-6-12\HomeFOS\DisabledUsers' -ChildPath $user
	$testpath4 = Join-Path '\\tsd-data-6-12\HomeSHO' -ChildPath $user
	$testpath5 = Join-Path '\\tsd-data-6-12\HomeSHO\DisabledUsers' -ChildPath $user
	$testpath6 = Join-Path '\\tsd-data-p-5\HomeTHO' -ChildPath $user
	$testpath7 = Join-Path '\\tsd-data-p-5\HomeTHO\DisabledUsers' -ChildPath $user
	$testpath8 = Join-Path '\\tsd-data-p-5\HomeTUK' -ChildPath $user
	$testpath9 = Join-Path '\\tsd-data-p-5\HomeTUK\DisabledUsers' -ChildPath $user

	$homedir = Join-Path $homedir_container -ChildPath $user
	
	if ((Test-Path -path $homedir) -eq $True) {
		# Great, do nothing.
	} elseif ((Test-Path -path $testpath0) -eq $True) {
		Move-Item $testpath0 $homedir
		write-dblog -header "User Home Move" -message "User Home Directory was moved from: $testpath0 to: $homedir." -account "$user"
	} elseif ((Test-Path -path $testpath1) -eq $True) {
		Move-Item $testpath1 $homedir		
		write-dblog -header "User Home Move" -message "User Home Directory was moved from: $testpath1 to: $homedir." -account "$user"
	} elseif ((Test-Path -path $testpath2) -eq $True) {
		Move-Item $testpath2 $homedir
		write-dblog -header "User Home Move" -message "User Home Directory was moved from: $testpath2 to: $homedir." -account "$user"
	} elseif ((Test-Path -path $testpath3) -eq $True) {
		Move-Item $testpath3 $homedir
		write-dblog -header "User Home Move" -message "User Home Directory was moved from: $testpath3 to: $homedir." -account "$user"
	} elseif ((Test-Path -path $testpath4) -eq $True) {
		Move-Item $testpath4 $homedir
		write-dblog -header "User Home Move" -message "User Home Directory was moved from: $testpath4 to: $homedir." -account "$user"
	} elseif ((Test-Path -path $testpath5) -eq $True) {
		Move-Item $testpath5 $homedir
		write-dblog -header "User Home Move" -message "User Home Directory was moved from: $testpath5 to: $homedir." -account "$user"
	} elseif ((Test-Path -path $testpath6) -eq $True) {
		Move-Item $testpath6 $homedir
		write-dblog -header "User Home Move" -message "User Home Directory was moved from: $testpath6 to: $homedir." -account "$user"
	} elseif ((Test-Path -path $testpath7) -eq $True) {
		Move-Item $testpath7 $homedir
		write-dblog -header "User Home Move" -message "User Home Directory was moved from: $testpath7 to: $homedir." -account "$user"
	} elseif ((Test-Path -path $testpath8) -eq $True) {
		Move-Item $testpath8 $homedir
		write-dblog -header "User Home Move" -message "User Home Directory was moved from: $testpath8 to: $homedir." -account "$user"
	} elseif ((Test-Path -path $testpath9) -eq $True) {
		Move-Item $testpath9 $homedir
		write-dblog -header "User Home Move" -message "User Home Directory was moved from: $testpath9 to: $homedir." -account "$user"
	} else {
		create-userHomeDir -user $user -class $class -lookup $lookup
	}
}