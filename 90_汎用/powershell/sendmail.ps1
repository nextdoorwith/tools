
$EmailFrom = "sender@example.com"
$EmailTo ="receiver@example.com"
$Subject = "���m�点"
$Body = "����̓e�X�g�ł��B"
$SMTPServer = "localhost"
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 25)
$SMTPClient.EnableSsl = $false
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
$SMTPClient.Dispose()

