<#

.SYNOPSIS
	Send Account Change Report
.DESCRIPTION
	Function that will produce a report every time the account management script is ran
.NOTES
	File Name	:	send-accountReport.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	August 11, 2012
.LINK
	https://github.com/krishagel/edage
	
#>


function send-accountReport
{
	Param(
	[string]$time
	)

	$Subject = "Account Change Notification Report" 
	$Body = '<div style="width: 600px; border: 2px solid #ADAAAA;padding: 0px">'
	$Body += '<div style="background-color: #DADADA; padding: 10px; font-size: 1.75em; text-align: center">Account Generation Report Email</div>'
	$Body += '<p style="margin: 5px;">The following is a report of all changes made during the last account generation run which was launched at: <i>'
	$Body += $time
	$Body += '</i></p>'
	$Body += '<div align="center">'
	$Body += '<table style="width: 550px;"><tr style="text-decoration: underline"><th style="text-align: left">Category:</th><th style="text-align: left">Message:</th><th style="text-align: left">Account Affected:</th><th style="text-align: left">Modification Date:</th></tr>'
	#$Body = "We are testing <b>HTML</b> email <br>this is a notification from XYZ Notifications<br>The Server Time is: $time" 

	# Open the database connection
	$conn = New-MySQLConnection -server $dbserver -user $dbuser -password $dbpass -database $log_db
	
	# Insert log record into the database
	$results = Invoke-MySQLQuery "select * from acct_gen where mod_date between str_to_date(@time, '%m/%e/%Y %l:%i:%s %p') and NOW() ORDER BY mod_date" -parameters @{time=$time} -conn $conn

	Foreach ($result in $results) {
		$record_header = $result.header
		$record_message = $result.message
		$record_account = $result.account
		$record_modDate = $result.mod_date
		$Body += "<tr><td style='text-align: left'>$record_header</td><td style='text-align: left'>$record_message</td><td style='text-align: left'>$record_account</td><td style='text-align: left'>$record_modDate</td></tr>"
 	}
	
	$Body += '</table></div><hr />'
	$Body += '<p style="margin: 5px; font-size: .85em; text-align: center">If you have any problems with these updates, please contact Kris Hagel - kris@krishagel.com</p></div>'

	$SMTPClient = New-Object Net.Mail.SmtpClient($mail_server, $mail_port) 
	$SMTPClient.EnableSsl = $true 
	$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($mail_username, $mail_password); 
	$emailMessage = New-Object System.Net.Mail.MailMessage
	$emailMessage.From = $mail_from
	$emailMessage.To.Add($mail_to)
	$emailMessage.Subject = $Subject
	$emailMessage.Body = $Body
	$emailMessage.IsBodyHtml = $true
	$SMTPClient.Send($emailMessage)
}