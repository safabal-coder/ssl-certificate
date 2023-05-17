Write-Host "Your Notification Logic Goes Here" 
$Attachment = ".\\_site\index.html"
$secpasswd = ConvertTo-SecureString "tfWgE8$5rO87" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("devops-notification@architecht.com", $secpasswd)
Send-MailMessage -To 'safabal@gmail.com' -From 'devops-notification@architecht.com' -Subject 'Your message subject' -Body 'Some important plain text!' -UseSsl -Credential $cred -SmtpServer 'smtp.office365.com' -Port 587 -UseSsl -Attachments $Attachment



#-Credential $cred



#-Credential (Get-Credential)