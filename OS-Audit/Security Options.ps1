echo " "
echo " "

echo "Security Options"

echo " "
echo " "


<#
echo " "
echo " "

echo "Accounts"

echo " "
echo " "

$var=$null

$var = findstr /c:"Accounts: Administrator account status" .\Security-Options.csv 


if($var -like 'Accounts: Administrator account status,Disabled') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-003.01 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-003.01 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm

New-Item -Path D:\".\$date-OS AUDIT"\"Audit Policy" -ItemType Directory

Write-Output ("Check: User Right Assignment","ID: SVR016-003.01","Description: Ensure Accounts: Administrator account status is set to Disabled","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Accounts.txt"

echo ("Check: User Right Assignment, ID: SVR016-003.01, Description: Ensure Accounts: Administrator account status is set to Disabled, Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo ================================================


$var=$null

$var = findstr /c:"Accounts: Block Microsoft accounts" .\Security-Options.csv ; $var=$var.split(',')[1]


if($var -like "Users can't add or log on with Microsoft accounts") {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-003.02 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-003.02 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm


Write-Output ("Check: User Right Assignment","ID: SVR016-003.02","Description: Ensure Accounts: Block Microsoft accounts is set to Users can't add or log on with Microsoft accounts","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Accounts.txt"

echo ("Check: User Right Assignment, ID: SVR016-003.02, Description: Ensure Accounts: Block Microsoft accounts is set to Users can't add or log on with Microsoft accounts, Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo ================================================


$var=$null

$var = findstr /c:"Accounts: Guest account status" .\Security-Options.csv ; $var=$var.split(',')[1]


if($var -like 'Disabled') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-003.03 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-003.03 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm


Write-Output ("Check: User Right Assignment","ID: SVR016-003.03","Description: Ensure Accounts: Guest account status is set to Disabled","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Accounts.txt"

echo ("Check: User Right Assignment, ID: SVR016-003.03, Description: Ensure Accounts: Guest account status is set to Disabled, Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo ================================================


$var=$null

$var = findstr /c:"Accounts: Limit local account use of blank passwords to console logon only" .\Security-Options.csv ; $var=$var.split(',')[1]


if($var -like 'Enabled') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-003.04 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-003.04 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm


Write-Output ("Check: User Right Assignment","ID: SVR016-003.04","Description: Ensure Accounts: Limit local account use of blank passwords to console logon only is set to Enabled","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Accounts.txt"

echo ("Check: User Right Assignment, ID: SVR016-003.04, Description: Ensure Accounts: Limit local account use of blank passwords to console logon only is set to Enabled, Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo ================================================


$var=$null

$var = findstr /c:"Accounts: Rename administrator account" .\Security-Options.csv ; $var=$var.split(',')[1]

$var1=$var


if($var -like $var1) {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-003.05 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-003.05 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm


Write-Output ("Check: User Right Assignment","ID: SVR016-003.05","Description: Configure Accounts: Rename administrator account","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Accounts.txt"

echo ("Check: User Right Assignment, ID: SVR016-003.05, Description: Configure Accounts: Rename administrator account, Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo ================================================


$var=$null

$var = findstr /c:"Accounts: Rename guest account" .\Security-Options.csv ; $var=$var.split(',')[1]

$var1=$var


if($var -like 'Guest') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-003.06 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-003.06 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm


Write-Output ("Check: User Right Assignment","ID: SVR016-003.06","Description: Configure Accounts: Rename guest account","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Accounts.txt"

echo ("Check: User Right Assignment, ID: SVR016-003.06, Description: Configure Accounts: Rename guest account, Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo =====================================================================================


echo " "
echo " "

echo "Audit"

echo " "
echo " "

$var=$null

$var = findstr /c:"Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings" .\Security-Options.csv ; $var=$var.split(',')[1]


if($var -like 'Enabled') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-004.01 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-004.01 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm


Write-Output ("Check: User Right Assignment","ID: SVR016-004.01","Description: Ensure Audit: Force audit policy subcategory settings
(Windows Vista or later) to override audit policy category settings is set to Enabled","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Audit.txt"

echo ("Check: User Right Assignment, ID: SVR016-004.01, Description: Ensure Audit: Force audit policy subcategory settings
(Windows Vista or later) to override audit policy category settings is set to Enabled, Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo ================================================


$var=$null

$var = findstr /c:"Audit: Shut down system immediately if unable to log security audits" .\Security-Options.csv ; $var=$var.split(',')[1]


if($var -like 'Disabled') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-004.02 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-004.02 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm


Write-Output ("Check: User Right Assignment","ID: SVR016-004.02","Description: Ensure Audit: Shut down system immediately if unable to log security audits is set to Disabled (Scored)","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Audit.txt"

echo ("Check: User Right Assignment, ID: SVR016-004.02, Description: Ensure Audit: Shut down system immediately if unable to log security audits is set to Disabled (Scored), Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo =====================================================================================


echo " "
echo " "

echo "Devices"

echo " "
echo " "

$var=$null

$var = findstr /c:"Devices: Allowed to format and eject removable media" .\Security-Options.csv ; $var=$var.split(',')[1]


if($var -like 'Administrators') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-005.01 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-005.01 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm


Write-Output ("Check: User Right Assignment","ID: SVR016-005.01","Description: Ensure Devices: Allowed to format and eject removable media is set to Administrators","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Devices.txt"

echo ("Check: User Right Assignment, ID: SVR016-005.01, Description: Ensure Devices: Allowed to format and eject removable media is set to Administrators, Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo ================================================


$var=$null

$var = findstr /c:"Devices: Prevent users from installing printer drivers" .\Security-Options.csv ; $var=$var.split(',')[1]


if($var -like 'Enabled') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-005.02 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-005.02 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm


Write-Output ("Check: User Right Assignment","ID: SVR016-005.02","Description: Ensure Devices: Prevent users from installing printer drivers is set to Enabled","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Devices.txt"

echo ("Check: User Right Assignment, ID: SVR016-005.02, Description: Ensure Devices: Prevent users from installing printer drivers is set to Enabled, Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo =====================================================================================


echo " "
echo " "

echo "Domain controller"

echo " "
echo " "

$var=$null

$var = findstr /c:"Devices: Allowed to format and eject removable media" .\Security-Options.csv ; $var=$var.split(',')[1]


if($var -like 'Administrators') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-006.01 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-006.01 Check:$result"
}

$date = get-date -f MM-dd-yyyy_HH_mm


Write-Output ("Check: User Right Assignment","ID: SVR016-006.01","Description: Ensure Devices: Allowed to format and eject removable media is set to Administrators","Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Domain controller.txt"

echo ("Check: User Right Assignment, ID: SVR016-006.01, Description: Ensure Devices: Allowed to format and eject removable media is set to Administrators, Result: $result","  ") > D:\".\$date-OS AUDIT"\"Security Options"\"Security Options.csv"


echo ================================================
#>






echo " "
echo " "

echo "Interactive logon"

echo " "
echo " "

$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prompt user to change password before expiration" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Interactive logon: Prompt user to change password before expiration') ; $var = $var -replace ".{18}$"

if($var -like '14') {
$result= "pass"
echo "Name: Interactive logon ID:SVR016-007.7 Check:$result"
} else {
$result= "fail"
echo "Name: Interactive logon ID:SVR016-007.7 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#New-Item -Path D:\".\$date-OS AUDIT"\"Security Options" -ItemType Directory


#Write-Output ("Check: Interactive logon","ID: SVR016-007.7","Description: Ensure Interactive logon: Prompt user to change password before expiration is set to between 5 and 14 days (Scored)","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Security Options"\"Interactive logon.txt"


echo ("Check: Interactive logon,ID: SVR016-007.7,Description: Ensure Interactive logon: Prompt user to change password before expiration is set to between 5 and 14 days (Scored), but not 0,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "Network access"

echo " "
echo " "

$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow anonymous SID/Name translation" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Network access: Allow anonymous SID/Name translation') ; $var = $var -replace ".{21}$"

if($var -like 'Disabled') {
$result= "pass"
echo "Name: Network access ID:SVR016-009.1 Check:$result"
} else {
$result= "fail"
echo "Name: Network access ID:SVR016-009.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Network access","ID: SVR016-009.1","Description: Ensure Network access: Allow anonymous SID/Name translation is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Security Options"\"Network Access.txt"


echo ("Check: Network access,ID: SVR016-009.1,Description: Ensure Network access: Allow anonymous SID/Name translation is set to Disabled,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "Network security"

echo " "
echo " "

$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not store LAN Manager hash value on next password change" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Network security: Do not store LAN Manager hash value on next password change') ; $var = $var -replace ".{21}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Network security ID:SVR016-010.5 Check:$result"
} else {
$result= "fail"
echo "Name: Network security ID:SVR016-010.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Network security","ID: SVR016-010.5","Description: Ensure Network security: Do not store LAN Manager hash value on next password change is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Security Options"\"Network security.txt"


echo ("Check: Network security,ID: SVR016-010.5,Description: Ensure Network security: Do not store LAN Manager hash value on next password change is set to Enabled,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Force logoff when logon hours expire" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Network security: Force logoff when logon hours expire') ; $var = $var -replace ".{21}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Network security ID:SVR016-010.6 Check:$result"
} else {
$result= "fail"
echo "Name: Network security ID:SVR016-010.6 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Network security","ID: SVR016-010.6","Description: Ensure Network security: Force logoff when logon hours expire is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Security Options"\"Network security.txt"


echo ("Check: Network security,ID: SVR016-010.6,Description: Ensure Network security: Force logoff when logon hours expire is set to Enabled,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "Shutdown"

echo " "
echo " "

$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:" Allow system to be shut down without having to log on" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Shutdown: Allow system to be shut down without having to log on') ; $var = $var -replace ".{14}$"

if($var -like 'Disabled') {
$result= "pass"
echo "Name: Shutdown ID:SVR016-011.1 Check:$result"
} else {
$result= "fail"
echo "Name: Shutdown ID:SVR016-011.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Shutdown","ID: SVR016-011.1","Description: Ensure Shutdown: Allow system to be shut down without having to log on is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Security Options"\"Shutdown.txt"


echo ("Check: Shutdown,ID: SVR016-011.1,Description: Ensure Shutdown: Allow system to be shut down without having to log on is set to Disabled,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================



