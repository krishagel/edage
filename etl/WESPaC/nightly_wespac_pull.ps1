# Database Connection Information
$server = 'localhost'
$user = 'khagel'
$pass = '3wedCg12'
$database = 'data_staging'

Import-Module mysqllib

$conn = New-MySQLConnection -server $server -user $user -password $pass -database $database

$base_number = 10000

do {
	# run conversion
	Z:\data-integration\Kitchen.bat /file:"Z:\data-conversions\WESPaC Nightly Data Pull.kjb" :level=debug > Z:\logs\wespac_nightly-pull.log

	$res = Invoke-MySQLQuery "SELECT count('family-id') as howMany from family_guardian" -conn $conn
	$count = $res.howMany

}
until ($count -gt $base_number)