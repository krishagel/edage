<#

.SYNOPSIS
	Account Management - Add Active Directory Account
.DESCRIPTION
	Function that will add a user in Active Directory.  
		Main difference between this and native QAD cmdlets is that there is some error catching and logging enabled.
.NOTES
	File Name	:	add-adAccount.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 15, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
	
#>

function add-adAccount
{
	Param (
	[parameter(Mandatory = $true)]
	[string]$account,
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
		New-QADUser -Name $account -ParentContainer $container -UserPassword $password -SamAccountName $account -Email $email -ObjectAttributes @{employeeType=$type;employeeID=$idnum;middleName=$middleInitial;homePostalAddress=$homeAddress} -DisplayName $displayName -LastName $lastName -FirstName $firstName -Initials $initials -Title $title -PhoneNumber $phone -Department $department -Company $company -City $city -StateOrProvince $state -PostalCode $zip -StreetAddress $street -HomePhone $homePhone -HomeDrive $homeDrive -HomeDirectory $homeDirectory -ProfilePath $profilePath -LogonScript $scriptPath -UserPrincipalName $account -Description $title -ErrorAction SilentlyContinue
		Rename-QADObject $account -NewName $displayName
		write-dblog -header "Acct Creation Success" -message "Creation of account was successful for account: $account." -account "$account"
	} 
	catch {
		$errMsg = "Account creation error= $($error[0])"
		$errMsg = $errMsg.replace("'","''")
		write-dblog -header "Acct Creation Error" -message $errMsg -account "$account"
	}
}