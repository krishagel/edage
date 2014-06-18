<#

.SYNOPSIS
	Account Management - Update Active Directory Account
.DESCRIPTION
	Function that will update a user in Active Directory.  
		Main difference between this and native QAD cmdlets is that there is some error catching and logging enabled.
.NOTES
	File Name	:	update-adAccount.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 16, 2012
.LINK
	https://github.com/krishagel/edage
.EXAMPLE
	update-adAccount -currentAccount jdoe -newAccount doej -container 'domain/ou/container' -password Secretcode -displayName "Doe, John D" -email doej@schooldomain -type staff -idnum 'DOE  JOH000' -lastName Doe -firstName John -middleInitial D -initials JDD -title Consultant -phone 253.555.2121 -department Consulting -company Self-Employed -city Tacoma -state WA -zip 98446 -street "1234 Boardwalk Drive" -homePhone 253.555.3213 -homeAddress "1234 Boardwalk Drive, Tacoma, WA 98446" -homeDrive D: 

	
#>

function update-adAccount
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param (
	[parameter(Mandatory = $true)]
	[string]$currentAccount,
	[parameter(Mandatory = $true)]
	[string]$newAccount,
	[parameter(Mandatory = $true)]
	[string]$container,
	[parameter(Mandatory = $true)]
	[string]$password,
	[string]$displayName,
	[string]$email,
	[string]$type,
	[string]$idnum,
	[string]$lastName,
	[string]$firstName,
	[string]$middleInitial,
	[string]$initials,
	[string]$title,
	[string]$phone,
	[string]$department,
	[string]$company,
	[string]$city,
	[string]$state,
	[string]$zip,
	[string]$street,
	[string]$homePhone,
	[string]$homeAddress,
	[string]$homeDrive,
	[string]$homeDirectory,
	[string]$scriptPath,
	[string]$profilePath	
	)
	$error.Clear()
	
	try {
		if ($WhatIfPreference -eq $true) {
			Set-QADUser -Identity $currentAccount -UserPassword $password -AccountExpires $null -SamAccountName $newAccount -Email $email -ObjectAttributes @{employeeType=$type;employeeID=$idnum;middleName=$middleInitial;homePostalAddress=$homeAddress} -DisplayName $displayName -LastName $lastName -FirstName $firstName -Initials $initials -Title $title -PhoneNumber $phone -Department $department -Company $company -City $city -StateOrProvince $state -PostalCode $zip -StreetAddress $street -HomePhone $homePhone -HomeDrive $homeDrive -HomeDirectory $homeDirectory -ProfilePath $profilePath -LogonScript $scriptPath -UserPrincipalName $newAccount -Description $title -ErrorAction SilentlyContinue -WhatIf
			Rename-QADObject $newAccount -NewName $displayName -WhatIf
			Move-QADObject -Identity $newAccount -NewParentContainer $container -WhatIf
			Enable-QADUser -Identity $newAccount -WhatIf
		} else {
			Set-QADUser -Identity $currentAccount -UserPassword $password -AccountExpires $null -SamAccountName $newAccount -Email $email -ObjectAttributes @{employeeType=$type;employeeID=$idnum;middleName=$middleInitial;homePostalAddress=$homeAddress} -DisplayName $displayName -LastName $lastName -FirstName $firstName -Initials $initials -Title $title -PhoneNumber $phone -Department $department -Company $company -City $city -StateOrProvince $state -PostalCode $zip -StreetAddress $street -HomePhone $homePhone -HomeDrive $homeDrive -HomeDirectory $homeDirectory -ProfilePath $profilePath -LogonScript $scriptPath -UserPrincipalName $newAccount -Description $title -ErrorAction SilentlyContinue
			Rename-QADObject $newAccount -NewName $displayName
			Move-QADObject -Identity $newAccount -NewParentContainer $container
			Enable-QADUser -Identity $newAccount
		}
		write-dblog -header "Acct Update Success" -message "Update of account was successful for account: $newAccount." -account "$newAccount"
	} 
	catch {
		$errMsg = "Account update error= $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Acct Update Error" -message $errMsg -account "$currentAccount"
	}
}