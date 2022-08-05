echo " "
echo " "

echo "Windows Firewall with Advance Security"

echo " "
echo " "

echo DOMAIN
echo " "

$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Domain | findstr /c:"Enabled"

if($var -like 'Enabled                         : True') {
$result= "pass"
echo "Name: Domain ID:SVR016-014.1 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-014.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#New-Item -Path D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit" -ItemType Directory

#Write-Output ("Check: Domain","ID: SVR016-014.1","Description: Ensure Windows Firewall: Domain: Firewall state is set to On","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Domain.txt"


echo ("Check: Domain,ID: SVR016-014.1,Description: Ensure Windows Firewall: Domain: Firewall state is set to On,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Domain | findstr /c:"DefaultInboundAction"

if($var -like 'DefaultInboundAction            : Block') {
$result= "pass"
echo "Name: Domain ID:SVR016-014.2 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-014.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Domain","ID: SVR016-014.2","Description: Ensure Windows Firewall: Domain: Inbound connections is set to Block","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Domain.txt"

echo ("Check: Domain,ID: SVR016-014.2,Description: Ensure Windows Firewall: Domain: Inbound connections is set to Block,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null

$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Domain | findstr /c:"DefaultOutboundAction"

if($var -like 'DefaultOutboundAction           : Allow') {
$result= "pass"
echo "Name: Domain ID:SVR016-014.3 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-014.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Domain","ID: SVR016-014.3","Description: Ensure Windows Firewall: Domain: Outbound connections is set to Allow","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Domain.txt"

echo ("Check: Domain,ID: SVR016-014.3,Description: Ensure Windows Firewall: Domain: Outbound connections is set to Allow,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Display notification" 

if($var -like '<tr><td>Display notifications</td><td>No</td><td>Local Group Policy</td></tr>') {
$result= "pass"
echo "Name: Shutdown ID:SVR016-014.4 Check:$result"
} else {
$result= "fail"
echo "Name: Shutdown ID:SVR016-014.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Shutdown","ID: SVR016-014.4","Description: Ensure Windows Firewall: Domain: Settings: Display a notification is set to No","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Domain.txt"


echo ("Check: Shutdown,ID: SVR016-014.4,Description: Ensure Windows Firewall: Domain: Settings: Display a notification is set to No,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ================================================

$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Domain | findstr /c:"LogFileName"

if($var -like 'LogFileName                     : %SYSTEMROOT%\System32\logfiles\firewall\domainfw.log') {
$result= "pass"
echo "Name: Domain ID:SVR016-014.5 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-014.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Domain","ID: SVR016-014.5","Description: Ensure Windows Firewall: Domain: Logging: Name is set to '%SYSTEMROOT%\System32\logfiles\firewall\domainfw.log","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Domain.txt"


echo ("Check: Domain,ID: SVR016-014.5,Description: Ensure Windows Firewall: Domain: Logging: Name is set to '%SYSTEMROOT%\System32\logfiles\firewall\domainfw.log,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Domain | findstr /c:"LogMaxSizeKilobytes"

if($var -like 'LogMaxSizeKilobytes             : 16384') {
$result= "pass"
echo "Name: Domain ID:SVR016-014.6 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-014.6 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Domain","ID: SVR016-014.6","Description: Ensure Windows Firewall: Domain: Logging: Size limit (KB) is set to 16,384 KB or greater","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Domain.txt"

echo ("Check: Domain,ID: SVR016-014.6,Description: Ensure Windows Firewall: Domain: Logging: Size limit (KB) is set to 16,384 KB or greater,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Domain | findstr /c:"LogBlocked"

if($var -like 'LogBlocked                      : True') {
$result= "pass"
echo "Name: Domain ID:SVR016-014.7 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-014.7 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Domain","ID: SVR016-014.7","Description: Ensure Windows Firewall: Domain: Logging: Log dropped packets is set to Yes","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Domain.txt"

echo ("Check: Domain,ID: SVR016-014.7,Description: Ensure Windows Firewall: Domain: Logging: Log dropped packets is set to Yes,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Domain | findstr /c:"LogAllowed"

if($var -like 'LogAllowed                      : True') {
$result= "pass"
echo "Name: Domain ID:SVR016-014.8 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-014.8 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Domain","ID: SVR016-014.8","Description: Ensure Windows Firewall: Domain: Logging: Log successful connections is set to Yes","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Domain.txt"

echo ("Check: Domain,ID: SVR016-014.8,Description: Ensure Windows Firewall: Domain: Logging: Log successful connections is set to Yes,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo PRIVATE
echo " "

$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"Enabled"

if($var -like 'Enabled                         : True') {
$result= "pass"
echo "Name: Domain ID:SVR016-015.1 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-015.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-015.1","Description: Ensure Windows Firewall: Private: Firewall state is set to On","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Private.txt"

echo ("Check: Private,ID: SVR016-015.1,Description: Ensure Windows Firewall: Private: Firewall state is set to On,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ================================================

$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"DefaultInboundAction"

if($var -like 'DefaultInboundAction            : Block') {
$result= "pass"
echo "Name: Domain ID:SVR016-015.2 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-015.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-015.2","Description: Ensure Windows Firewall: Private: Inbound connections is setto Block","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Private.txt"

echo ("Check: Private,ID: SVR016-015.2,Description: Ensure Windows Firewall: Private: Inbound connections is set to Block,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"DefaultOutboundAction"

if($var -like 'DefaultOutboundAction           : Allow') {
$result= "pass"
echo "Name: Domain ID:SVR016-015.3 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-015.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Private","ID: SVR016-015.3","Description: Ensure Windows Firewall: Private: Outbound connections is set to Allow","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Private.txt"

echo ("Check: Private,ID: SVR016-015.3,Description: Ensure Windows Firewall: Private: Outbound connections is set to Allow,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Display notification" 

if($var -like '<tr><td>Display notifications</td><td>No</td><td>Local Group Policy</td></tr>') {
$result= "pass"
echo "Name: Shutdown ID:SVR016-015.4 Check:$result"
} else {
$result= "fail"
echo "Name: Shutdown ID:SVR016-015.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Shutdown","ID: SVR016-015.4","Description: Ensure Windows Firewall: Domain: Settings: Display a notification is set to No","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Private.txt"


echo ("Check: Shutdown,ID: SVR016-015.4,Description: Ensure Windows Firewall: Domain: Settings: Display a notification is set to No,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ================================================

$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"LogFileName"

if($var -like 'LogFileName                     : %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log') {
$result= "pass"
echo "Name: Domain ID:SVR016-015.5 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-015.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Private","ID: SVR016-015.5","Description: Ensure Windows Firewall: Private: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Private.txt"

echo ("Check: Private,ID: SVR016-015.5,Description: Ensure Windows Firewall: Private: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"LogMaxSizeKilobytes"

if($var -like 'LogMaxSizeKilobytes             : 16384') {
$result= "pass"
echo "Name: Domain ID:SVR016-015.6 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-015.6 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-015.6","Description: Ensure Windows Firewall: Private: Logging: Size limit (KB) is set to 16,384 KB or greater","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Private.txt"

echo ("Check: Private,ID: SVR016-015.6,Description: Ensure Windows Firewall: Private: Logging: Size limit (KB) is set to 16,384 KB or greater,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"LogBlocked"

if($var -like 'LogBlocked                      : True') {
$result= "pass"
echo "Name: Domain ID:SVR016-015.7 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-015.7 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-015.7","Description: Ensure Windows Firewall: Private: Logging: Log dropped packets is set to Yes","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Private.txt"

echo ("Check: Private,ID: SVR016-015.7,Description: Ensure Windows Firewall: Private: Logging: Log dropped packets is set to Yes,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"LogAllowed"

if($var -like 'LogAllowed                      : True') {
$result= "pass"
echo "Name: Domain ID:SVR016-015.8 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-015.8 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-015.8","Description: Ensure Windows Firewall: Private: Logging: Log successful connections is set to Yes","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Private.txt"

echo ("Check: Private,ID: SVR016-015.8,Description: Ensure Windows Firewall: Private: Logging: Log successful connections is set to Yes,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo PUBLIC
echo " "

$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Public | findstr /c:"Enabled"

if($var -like 'Enabled                         : True') {
$result= "pass"
echo "Name: Public ID:SVR016-016.1 Check:$result"
} else {
$result= "fail"
echo "Name: Public ID:SVR016-016.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Public","ID: SVR016-016.1","Description: Ensure Windows Firewall: Public: Firewall state is set to On","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Public.txt"

echo ("Check: Public,ID: SVR016-016.1,Description: Ensure Windows Firewall: Public: Firewall state is set to On,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"DefaultInboundAction"

if($var -like 'DefaultInboundAction            : Block') {
$result= "pass"
echo "Name: Domain ID:SVR016-016.2 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-016.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-016.2","Description: Ensure Windows Firewall: Public: Inbound connections is set to Block","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Public.txt"

echo ("Check: Private,ID: SVR016-016.2,Description: Ensure Windows Firewall: Public: Inbound connections is set to Block,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"DefaultOutboundAction"

if($var -like 'DefaultInboundAction            : Block') {
$result= "pass"
echo "Name: Domain ID:SVR016-016.3 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-016.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-016.3","Description: Ensure Windows Firewall: Public: Outbound connections is set to Allow","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Public.txt"

echo ("Check: Private,ID: SVR016-016.3,Description: Ensure Windows Firewall: Public: Outbound connections is set to Allow,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Display notification" 

if($var -like '<tr><td>Display notifications</td><td>No</td><td>Local Group Policy</td></tr>') {
$result= "pass"
echo "Name: Shutdown ID:SVR016-016.4 Check:$result"
} else {
$result= "fail"
echo "Name: Shutdown ID:SVR016-016.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Shutdown","ID: SVR016-016.4","Description: Ensure Windows Firewall: Domain: Settings: Display a notification is set to No","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Public.txt"


echo ("Check: Shutdown,ID: SVR016-016.4,Description: Ensure Windows Firewall: Domain: Settings: Display a notification is set to No,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"AllowLocalFirewallRules"

if($var -like 'AllowLocalFirewallRules         : False') {
$result= "pass"
echo "Name: Domain ID:SVR016-016.5 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-016.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-016.5","Description: Ensure Windows Firewall: Public: Settings: Apply local firewall rules is set to No","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Public.txt"

echo ("Check: Private,ID: SVR016-016.5,Description: Ensure Windows Firewall: Public: Settings: Apply local firewall rules is set to No,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"AllowLocalIPsecRules"

if($var -like 'AllowLocalIPsecRules            : False') {
$result= "pass"
echo "Name: Domain ID:SVR016-016.6 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-016.6 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-016.6","Description: Ensure Windows Firewall: Public: Settings: Apply local connection security rules is set to No","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Public.txt"

echo ("Check: Private,ID: SVR016-016.6,Description: Ensure Windows Firewall: Public: Settings: Apply local connection security rules is set to No,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"LogFileName"

if($var -like 'LogFileName                     : %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log') {
$result= "pass"
echo "Name: Domain ID:SVR016-016.7 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-016.7 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-016.7","Description: Ensure Windows Firewall: Public: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\publicfw.log","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Public.txt"

echo ("Check: Private,ID: SVR016-016.7,Description: Ensure Windows Firewall: Public: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\publicfw.log,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"LogMaxSizeKilobytes"

if($var -like 'LogMaxSizeKilobytes             : 16384') {
$result= "pass"
echo "Name: Domain ID:SVR016-016.8 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-016.8 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-016.8","Description: Ensure Windows Firewall: Public: Logging: Size limit (KB) is set to 16,384 KB or greater","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Public.txt"

echo ("Check: Private,ID: SVR016-016.8,Description: Ensure Windows Firewall: Public: Logging: Size limit (KB) is set to 16,384 KB or greater,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"LogBlocked"

if($var -like 'LogBlocked                      : True') {
$result= "pass"
echo "Name: Domain ID:SVR016-016.9 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-016.9 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-016.9","Description: Ensure Windows Firewall: Public: Logging: Log dropped packets is set to Yes","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Public.txt"

echo ("Check: Private,ID: SVR016-016.9,Description: Ensure Windows Firewall: Public: Logging: Log dropped packets is set to Yes,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var =  Get-NetFirewallProfile -PolicyStore ActiveStore -Name Private | findstr /c:"LogAllowed"

if($var -like 'LogAllowed                      : True') {
$result= "pass"
echo "Name: Domain ID:SVR016-016.10 Check:$result"
} else {
$result= "fail"
echo "Name: Domain ID:SVR016-016.10 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Private","ID: SVR016-016.10","Description: Ensure Windows Firewall: Public: Logging: Log successful connections is set to Yes","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Windows Firewall with AdvanceSecurit"\"Public.txt"

echo ("Check: Private,ID: SVR016-016.10,Description: Ensure Windows Firewall: Public: Logging: Log successful connections is set to Yes,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================