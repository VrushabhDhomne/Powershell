$Computer = $env:computername
Get-GPOReport -All -ReportType HTML -Path "C:\AUDIT-$Computer\SRV-02 Export of ALL Group Policies - $Computer.html"

Import-Module Activedirectory
Get-ADUser -Filter * -Properties DisplayName,memberof | % {
  New-Object PSObject -Property @{
	UserName = $_.DisplayName
	Groups = ($_.memberof | Get-ADGroup | Select -ExpandProperty Name) -join ","
	}
} | Select UserName,Groups | Export-Csv "C:\AUDIT-$Computer\SRV-01.1 User Listing of All Groups - $Computer.csv" -NTI

# Gets time stamps for all User in the domain that have NOT logged in since after specified date

$domain = '@' + (Get-ADDomain).dnsroot 
$DaysInactive = 90 
$time = (Get-Date).Adddays(-($DaysInactive))
 
# Get all AD User with lastLogonTimestamp less than our time and set to enable
Get-ADUser -Filter {LastLogonTimeStamp -lt $time -and enabled -eq $true} -Properties LastLogonTimeStamp |
 
# Output Name and lastLogonTimestamp into CSV
select-object Name,@{Name="Stamp"; Expression={[DateTime]::FromFileTime($_.lastLogonTimestamp)}} | Export-Csv "C:\AUDIT-$Computer\SRV-01.1 Users Inactive for More than 90 Days - $Computer.csv" -NTI

# Output Name whenCreated whenChanged LastlogonDate into CSV
Get-ADuser -Filter * -Properties * | select Name,whenCreated,whenChanged,LastlogonDate | Export-Csv "C:\AUDIT-$Computer\SRV-01.1 Account Creation Modification and LastLogon - $Computer.csv" -NTI 

Get-ADForest | Select-Object -ExpandProperty RootDomain | Get-ADDomain | Select-Object -ExpandProperty PDCEmulator > "C:\AUDIT-$Computer\SRV-01.7 NTP PDC Emulator Role - $Computer.rtf"

Get-DnsServer > "C:\Audit-$Computer\SRV-01.14 DNS Server Settings - $Computer.rtf"