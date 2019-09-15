
$EmailFrom = "sender@example.com"
$EmailTo ="receiver@example.com"
$Subject = "お知らせ"
$Body = "これはテストです。"
$SMTPServer = "localhost"
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 25)
$SMTPClient.EnableSsl = $false
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
$SMTPClient.Dispose()

