$LiveCred = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri httpsps.outlook.compowershell -Credential $LiveCred -Authentication Basic -AllowRedirection
Import-PSSession $Session
 
Import-CSV cmail.csv  %{
echo $_.mail
Remove-Mailbox -Identity $_.mail -Confirm$false
 
}