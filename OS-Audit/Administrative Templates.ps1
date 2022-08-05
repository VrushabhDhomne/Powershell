echo " "
echo " "

echo "Administrative Templates"

echo " "
echo " "


echo " "
echo " "

echo "Personalization"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prevent enabling lock screen camera" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Prevent enabling lock screen camera') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Personalization ID:SVR016-23.1 Check:$result"
} else {
$result= "fail"
echo "Name: Personalization ID:SVR016-23.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#New-Item -Path D:\".\$date-OS AUDIT"\"Administrative Templates" -ItemType Directory

#New-Item -Path .\".\$date-OS AUDIT"\"Output" -ItemType Directory

#Write-Output ("Check: Personalization","ID: SVR016-23.1","Description: Ensure Prevent enabling lock screen camera is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Personalization.txt"


echo ("Check: Personalization, ID: SVR016-23.1, Description: Ensure Prevent enabling lock screen camera is set to Enabled, but not 0, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prevent enabling lock screen slide show" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Prevent enabling lock screen slide show') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Personalization ID:SVR016-23.2 Check:$result"
} else {
$result= "fail"
echo "Name: Personalization ID:SVR016-23.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Personalization","ID: SVR016-23.2","Description: Prevent enabling lock screen slide show is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Personalization.txt"


echo ("Check: Personalization, ID: SVR016-23.2, Description: Prevent enabling lock screen slide show is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "DNS Client"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off multicast name resolution" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off multicast name resolution') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: DNS Client ID:SVR016-28.2 Check:$result"
} else {
$result= "fail"
echo "Name: DNS Client ID:SVR016-28.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: DNS Client","ID: SVR016-28.2","Description: Ensure Turn off multicast name resolution is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"DNS Client.txt"


echo ("Check: DNS Client, ID: SVR016-28.2, Description: Ensure Turn off multicast name resolution is set to Enable, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "Fonts"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Enable Font Providers" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Enable Font Providers') ; $var = $var -replace ".{18}$"

if($var -like 'Disabled') {
$result= "pass"
echo "Name: Fonts ID:SVR016-29.1 Check:$result"
} else {
$result= "fail"
echo "Name: Fonts ID:SVR016-29.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Fonts","ID: SVR016-29.1","Description: Ensure Enable Font Providers is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Fonts.txt"


echo ("Check: Fonts, ID: SVR016-29.1, Description: Ensure Enable Font Providers is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "Lanman Workstation"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Enable insecure guest logons" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Enable insecure guest logons') ; $var = $var -replace ".{18}$"

if($var -like 'Disabled') {
$result= "pass"
echo "Name: Lanman Workstation ID:SVR016-30.1 Check:$result"
} else {
$result= "fail"
echo "Name: Lanman Workstation ID:SVR016-30.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Lanman Workstation","ID: SVR016-30.1","Description: Ensure Enable insecure guest logons is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Lanman Workstation.txt"


echo ("Check: Lanman Workstation, ID: SVR016-30.1, Description: Ensure Enable insecure guest logons is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Link-Layer Topology Discovery"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn on Mapper I/O (LLTDIO) driver" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace ".{18}$"

if($var -like 'Turn on Mapper I/O (LLTDIO) driverDisabled') {
$result= "pass"
echo "Name: Link-Layer Topology Discovery ID:SVR016-31.1 Check:$result"
} else {
$result= "fail"
echo "Name: Link-Layer Topology Discovery ID:SVR016-31.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Link-Layer Topology Discovery","ID: SVR016-31.1","Description: Ensure Turn on Mapper I/O (LLTDIO) driver is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Link-Layer Topology Discovery.txt"


echo ("Check: Link-Layer Topology Discovery, ID: SVR016-31.1, Description: Ensure Turn on Mapper I/O (LLTDIO) driver is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ==========================================================



$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn on Mapper I/O (LLTDIO) driver" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace ".{18}$"

if($var -like 'Turn on Mapper I/O (LLTDIO) driverDisabled') {
$result= "pass"
echo "Name: Link-Layer Topology Discovery ID:SVR016-31.2 Check:$result"
} else {
$result= "fail"
echo "Name: Link-Layer Topology Discovery ID:SVR016-31.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Link-Layer Topology Discovery","ID: SVR016-31.2","Description: Ensure Turn on Responder (RSPNDR) driver is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Link-Layer Topology Discovery.txt"


echo ("Check: Link-Layer Topology Discovery, ID: SVR016-31.2, Description: Ensure Turn on Responder (RSPNDR) driver is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "Peer Name Resolution Protocol"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Microsoft Peer-to-Peer Networking Services" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off Microsoft Peer-to-Peer Networking Services') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Peer Name Resolution Protocol ID:SVR016-32.1 Check:$result"
} else {
$result= "fail"
echo "Name: Peer Name Resolution Protocol ID:SVR016-32.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Peer Name Resolution Protocol","ID: SVR016-32.1","Description: Ensure Turn off Microsoft Peer-to-Peer Networking Services is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Peer Name Resolution Protocol.txt"


echo ("Check: Peer Name Resolution Protocol, ID: SVR016-32.1, Description: Ensure Turn off Microsoft Peer-to-Peer Networking Services is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "Windows Defender Firewall"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prohibit installation and configuration of Network Bridge on your DNS domain network" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Prohibit installation and configuration of Network Bridge on your DNS domain network') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Windows Defender Firewall ID:SVR016-33.1 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Defender Firewall ID:SVR016-33.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Defender Firewall","ID: SVR016-33.1","Description: Ensure Prohibit installation and configuration of Network Bridge on your DNS domain network is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Defender Firewall.txt"


echo ("Check: Windows Defender Firewall, ID: SVR016-33.1, Description: Ensure Prohibit installation and configuration of Network Bridge on your DNS domain network is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prohibit use of Internet Connection Sharing on your DNS domain network" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Prohibit use of Internet Connection Sharing on your DNS domain network') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Windows Defender Firewall ID:SVR016-33.2 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Defender Firewall ID:SVR016-33.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Defender Firewall","ID: SVR016-33.2","Description: Ensure Prohibit use of Internet Connection Sharing on your DNS domain network is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Defender Firewall.txt"


echo ("Check: Windows Defender Firewall, ID: SVR016-33.2, Description: Ensure Prohibit use of Internet Connection Sharing on your DNS domain network is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Windows Connect Now"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Configuration of wireless settings using Windows Connect Now" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Configuration of wireless settings using Windows Connect Now') ; $var = $var -replace ".{18}$"

if($var -like 'Disabled') {
$result= "pass"
echo "Name: Windows Connect Now ID:SVR016-36.1 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Connect Now ID:SVR016-36.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Connect Now","ID: SVR016-36.1","Description: Ensure Configuration of wireless settings using Windows Connect Now is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Connect Now.txt"


echo ("Check: Windows Connect Now, ID: SVR016-36.1, Description: Ensure Configuration of wireless settings using Windows Connect Now is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prohibit access of the Windows Connect Now wizards" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Prohibit access of the Windows Connect Now wizards') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Windows Connect Now ID:SVR016-36.2 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Connect Now ID:SVR016-36.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Connect Now","ID: SVR016-36.2","Description: Ensure Prohibit access of the Windows Connect Now wizards is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Connect Now.txt"


echo ("Check: Windows Connect Now, ID: SVR016-36.2, Description: Ensure Prohibit access of the Windows Connect Now wizards is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Windows Connection Manager"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Minimize the number of simultaneous connections to the Internet or a Windows Domain" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Minimize the number of simultaneous connections to the Internet or a Windows Domain') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Windows Connection Manager ID:SVR016-37.1 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Connection Manager ID:SVR016-37.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Connection Manager","ID: SVR016-37.1","Description: Ensure Minimize the number of simultaneous connections to the Internet or a Windows Domain is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Connection Manager.txt"


echo ("Check: Windows Connection Manager, ID: SVR016-37.1, Description: Ensure Minimize the number of simultaneous connections to the Internet or a Windows Domain is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prohibit connection to non-domain networks when connected to domain authenticated network" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Prohibit connection to non-domain networks when connected to domain authenticated network') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Windows Connection Manager ID:SVR016-37.2 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Connection Manager ID:SVR016-37.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Connection Manager","ID: SVR016-37.2","Description: Ensure Prohibit connection to non-domain networks when connected to domain authenticated network is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Connection Manager.txt"


echo ("Check: Windows Connection Manager, ID: SVR016-37.2, Description: Ensure Prohibit connection to non-domain networks when connected to domain authenticated network is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Audit Process Creation"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Include command line in process creation events" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Include command line in process creation events') ; $var = $var -replace ".{18}$"

if($var -like 'Disabled') {
$result= "pass"
echo "Name: Audit Process Creation ID:SVR016-38.1 Check:$result"
} else {
$result= "fail"
echo "Name: Audit Process Creation ID:SVR016-38.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Audit Process Creation","ID: SVR016-38.1","Description: Ensure Include command line in process creation events is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Audit Process Creation.txt"


echo ("Check: Audit Process Creationl, ID: SVR016-38.1, Description: Ensure Include command line in process creation events is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "Credentials Delegation"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Encryption Oracle Remediation" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Encryption Oracle Remediation') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Credentials Delegation ID:SVR016-39.1 Check:$result"
} else {
$result= "fail"
echo "Name: Credentials Delegation ID:SVR016-39.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Credentials Delegation","ID: SVR016-39.1","Description: Ensure Encryption Oracle Remediation is set to Enabled: Force Updated Clients","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Credentials Delegation.txt"


echo ("Check: Credentials Delegation, ID: SVR016-39.1, Description: Ensure Encryption Oracle Remediation is set to Enabled: Force Updated Clients, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================



echo " "
echo " "

echo "Device Guard"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn On Virtualization Based Security" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn On Virtualization Based Security') ; $var = $var -replace ".{18}$"

if($var -like 'Enabled') {
$result= "pass"
echo "Name: Device Guard ID:SVR016-40.1 Check:$result"
} else {
$result= "fail"
echo "Name: Device Guard ID:SVR016-40.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Device Guard","ID: SVR016-40.1","Description: Ensure Turn On Virtualization Based Security is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Device Guard.txt"


echo ("Check: Device Guard, ID: SVR016-40.1, Description: Ensure Turn On Virtualization Based Security is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Select Platform Security Level:" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Select Platform Security Level:')

if($var -like 'Secure Boot and DMA Protection') {
$result= "pass"
echo "Name: Device Guard ID:SVR016-40.2 Check:$result"
} else {
$result= "fail"
echo "Name: Device Guard ID:SVR016-40.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Device Guard","ID: SVR016-40.2","Description: Ensure Turn On Virtualization Based Security: Select Platform Security Level is set to Secure Boot and DMA Protection","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Device Guard.txt"


echo ("Check: Device Guard, ID: SVR016-40.2, Description: Ensure Turn On Virtualization Based Security: Select Platform Security Level is set to Secure Boot and DMA Protection, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Virtualization Based Protection of Code Integrity:" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Virtualization Based Protection of Code Integrity:')

if($var -like 'Enabled with UEFI lock') {
$result= "pass"
echo "Name: Device Guard ID:SVR016-40.3 Check:$result"
} else {
$result= "fail"
echo "Name: Device Guard ID:SVR016-40.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Device Guard","ID: SVR016-40.3","Description: Ensure Turn On Virtualization Based Security: Virtualization Based Protection of Code Integrity is set to Enabled with UEFI lock","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Device Guard.txt"


echo ("Check: Device Guard, ID: SVR016-40.3, Description: Ensure Turn On Virtualization Based Security: Virtualization Based Protection of Code Integrity is set to Enabled with UEFI lock, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Credential Guard Configuration:" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Credential Guard Configuration:')

if($var -like 'Enabled with UEFI lock') {
$result= "pass"
echo "Name: Device Guard ID:SVR016-40.5 Check:$result"
} else {
$result= "fail"
echo "Name: Device Guard ID:SVR016-40.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Device Guard","ID: SVR016-40.5","Description: Ensure Turn On Virtualization Based Security: Credential Guard Configuration is set to Enabled with UEFI lock","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Device Guard.txt"


echo ("Check: Device Guard, ID: SVR016-40.5, Description: Ensure Turn On Virtualization Based Security: Credential Guard Configuration is set to Enabled with UEFI lock, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Early Launch Antimalware"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Boot-Start Driver Initialization Policy" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Boot-Start Driver Initialization Policy') ; $var = $var -replace ".{18}$"

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Choose the boot-start drivers that can be initialized:" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('Choose the boot-start drivers that can be initialized:') 

$var2 = $var + $var1


if($var2 -like 'EnabledGood, unknown and bad but critical') {
$result= "pass"
echo "Name: Early Launch Antimalware ID:SVR016-41.1 Check:$result"
} else {
$result= "fail"
echo "Name: Early Launch Antimalware ID:SVR016-41.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Early Launch Antimalware","ID: SVR016-41.1","Description: Ensure Boot-Start Driver Initialization Policy is set to Enabled: Good, unknown and bad but critical","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Early Launch Antimalware.txt"


echo ("Check: Early Launch Antimalware, ID: SVR016-41.1, Description: Ensure Boot-Start Driver Initialization Policy is set to Enabled: Good, unknown and bad but critical, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Logging and tracing"

echo " "
echo " "


$var = $null
$var1 = $null
$var2 = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not apply during periodic background processing" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not apply during periodic background processing') | select -Skip 1



if($var -like 'Enabled') {
$result= "pass"
echo "Name: Logging and tracing ID:SVR016-42.1 Check:$result"
} else {
$result= "fail"
echo "Name: Logging and tracing ID:SVR016-42.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Logging and tracing","ID: SVR016-42.1","Description: Ensure Configure registry policy processing: Do not apply during periodic background processing is set to Enabled: FALSE","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Logging and tracing.txt"


echo ("Check: Logging and tracing, ID: SVR016-42.1, Description: Ensure Configure registry policy processing: Do not apply during periodic background processing is set to Enabled: FALSE, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Process even if the Group Policy objects have not changed" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Process even if the Group Policy objects have not changed') | select -Skip 1



if($var -like 'Enabled') {
$result= "pass"
echo "Name: Logging and tracing ID:SVR016-42.2 Check:$result"
} else {
$result= "fail"
echo "Name: Logging and tracing ID:SVR016-42.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Logging and tracing","ID: SVR016-42.2","Description: Ensure Configure registry policy processing: Process even if the Group Policy objects have not changed is set to Enabled: TRUE","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Logging and tracing.txt"


echo ("Check: Logging and tracing, ID: SVR016-42.2, Description: Ensure Configure registry policy processing: Process even if the Group Policy objects have not changed is set to Enabled: TRUE, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off background refresh of Group Policy" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off background refresh of Group Policy') ; $var = $var -replace ".{18}$" 


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Logging and tracing ID:SVR016-42.4 Check:$result"
} else {
$result= "fail"
echo "Name: Logging and tracing ID:SVR016-42.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Logging and tracing","ID: SVR016-42.4","Description: Ensure Turn off background refresh of Group Policy is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Logging and tracing.txt"


echo ("Check: Logging and tracing, ID: SVR016-42.4, Description: Ensure Turn off background refresh of Group Policy is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Internet Communication settings"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off downloading of print drivers over HTTP" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off downloading of print drivers over HTTP') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.1 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.1","Description: Ensure Turn off downloading of print drivers over HTTP is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.1, Description: Ensure Turn off downloading of print drivers over HTTP is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off handwriting personalization data sharing" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off handwriting personalization data sharing') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.2 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.2","Description: Ensure Turn off handwriting personalization data sharing is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.2, Description: Ensure Turn off handwriting personalization data sharing is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off handwriting recognition error reporting" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off handwriting recognition error reporting') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.3 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.3","Description: Ensure Turn off handwriting recognition error reporting is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.3, Description: Ensure Turn off handwriting recognition error reporting is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Internet Connection Wizard if URL connection is referring to Microsoft.com" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off Internet Connection Wizard if URL connection is referring to Microsoft.com') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.4 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.4","Description: Ensure Turn off Internet Connection Wizard if URL connection is referring to Microsoft.com is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.4, Description: Ensure Turn off Internet Connection Wizard if URL connection is referring to Microsoft.com is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Internet download for Web publishing and online ordering wizards" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off Internet download for Web publishing and online ordering wizards') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.5 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.5","Description: Ensure Turn off Internet download for Web publishing and online ordering wizards is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.5, Description: Ensure Turn off Internet download for Web publishing and online ordering wizards is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off printing over HTTP" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off printing over HTTP') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.6 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.6 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.6","Description: Ensure Turn off printing over HTTP is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.6, Description: Ensure Turn off printing over HTTP is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Registration if URL connection is referring to Microsoft.com" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off Registration if URL connection is referring to Microsoft.com') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.7 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.7 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.7","Description: Ensure Turn off Registration if URL connection is referring to Microsoft.com is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.7, Description: Ensure Turn off Registration if URL connection is referring to Microsoft.com is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Search Companion content file updates" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off Search Companion content file updates') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.8 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.8 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.8","Description: Ensure Turn off Search Companion content file updates is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.8, Description: Ensure Turn off Search Companion content file updates is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"picture task" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off the &quot;Order Prints&quot; picture task') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.9 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.9 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.9","Description: Ensure Turn off the Order Prints picture task is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.9, Description: Ensure Turn off the Order Prints picture task is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"task for files and folders" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off the &quot;Publish to Web&quot; task for files and folders') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.10 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.10 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.10","Description: Ensure Turn off the Publish to Web task for files and folders is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.10, Description: Ensure Turn off the Publish to Web task for files and folders is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off the Windows Messenger Customer Experience Improvement Program" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off the Windows Messenger Customer Experience Improvement Program') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.11 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.11 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.11","Description: Ensure Turn off the Windows Messenger Customer Experience Improvement Program is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.11, Description: Ensure Turn off the Windows Messenger Customer Experience Improvement Program is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Windows Customer Experience Improvement Program" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off Windows Customer Experience Improvement Program') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.12 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.12 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.12","Description: Ensure Turn off Windows Customer Experience Improvement Program is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.12, Description: Ensure Turn off Windows Customer Experience Improvement Program is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Windows Error Reporting" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off Windows Error Reporting') ; $var = $var -replace ".{18}$" | select -SkipLast 1


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Internet Communication settings ID:SVR016-43.13 Check:$result"
} else {
$result= "fail"
echo "Name: Internet Communication settings ID:SVR016-43.13 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Internet Communication settings","ID: SVR016-43.13","Description: Ensure Turn off Windows Error Reporting is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Internet Communication settings.txt"


echo ("Check: Internet Communication settings, ID: SVR016-43.13, Description: Ensure Turn off Windows Error Reporting is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Kerberos"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Support device authentication using certificate" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Support device authentication using certificate') ; $var = $var -replace ".{18}$"

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Device authentication behavior using certificate:" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('Device authentication behavior using certificate:') 

$var2 = $var + $var1


if($var2 -like 'EnabledAutomatic') {
$result= "pass"
echo "Name: Kerberos ID:SVR016-44.1 Check:$result"
} else {
$result= "fail"
echo "Name: Kerberos ID:SVR016-44.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Kerberos","ID: SVR016-44.1","Description: Ensure Support device authentication using certificate is set to Enabled: Automatic","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Kerberos.txt"


echo ("Check: Kerberos, ID: SVR016-44.1, Description: Ensure Support device authentication using certificate is set to Enabled: Automatic, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "Locale Services"

echo " "
echo " "


$var = $null
$var1 = $null
$var2 = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Disallow copying of user input methods to the system account for sign-in" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Disallow copying of user input methods to the system account for sign-in') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Locale Services ID:SVR016-45.1 Check:$result"
} else {
$result= "fail"
echo "Name: Locale Services ID:SVR016-45.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Locale Services","ID: SVR016-45.1","Description: Ensure Disallow copying of user input methods to the system account for sign-in is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Locale Services.txt"


echo ("Check: Locale Services, ID: SVR016-45.1, Description: Ensure Disallow copying of user input methods to the system account for sign-in is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Logon"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Block user from showing account details on sign-in" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Block user from showing account details on sign-in') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Logon ID:SVR016-46.1 Check:$result"
} else {
$result= "fail"
echo "Name: Logon ID:SVR016-46.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Logon","ID: SVR016-46.1","Description: Ensure Block user from showing account details on signin is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Logon.txt"


echo ("Check: Logon, ID: SVR016-46.1, Description: Ensure Block user from showing account details on signin is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not display network selection UI" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not display network selection UI') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Logon ID:SVR016-46.2 Check:$result"
} else {
$result= "fail"
echo "Name: Logon ID:SVR016-46.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Logon","ID: SVR016-46.2","Description: Ensure Do not display network selection UI is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Logon.txt"


echo ("Check: Logon, ID: SVR016-46.2, Description: Ensure Do not display network selection UI is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not enumerate connected users on domain-joined computers" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not enumerate connected users on domain-joined computers') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Logon ID:SVR016-46.3 Check:$result"
} else {
$result= "fail"
echo "Name: Logon ID:SVR016-46.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Logon","ID: SVR016-46.3","Description: Ensure Do not enumerate connected users on domainjoined computers is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Logon.txt"


echo ("Check: Logon, ID: SVR016-46.3, Description: Ensure Do not enumerate connected users on domainjoined computers is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Enumerate local users on domain-joined computers" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Enumerate local users on domain-joined computers') ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Logon ID:SVR016-46.4 Check:$result"
} else {
$result= "fail"
echo "Name: Logon ID:SVR016-46.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Logon","ID: SVR016-46.4","Description: Ensure Enumerate local users on domain-joined computers is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Logon.txt"


echo ("Check: Logon, ID: SVR016-46.4, Description: Ensure Enumerate local users on domain-joined computers is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off app notifications on the lock screen" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off app notifications on the lock screen') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Logon ID:SVR016-46.5 Check:$result"
} else {
$result= "fail"
echo "Name: Logon ID:SVR016-46.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Logon","ID: SVR016-46.5","Description: Ensure Turn off app notifications on the lock screen is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Logon.txt"


echo ("Check: Logon, ID: SVR016-46.5, Description: Ensure Turn off app notifications on the lock screen is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off picture password sign-in" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off picture password sign-in') ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Logon ID:SVR016-46.6 Check:$result"
} else {
$result= "fail"
echo "Name: Logon ID:SVR016-46.6 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Logon","ID: SVR016-46.6","Description: Ensure Turn off picture password sign-in is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Logon.txt"


echo ("Check: Logon, ID: SVR016-46.6, Description: Ensure Turn off picture password sign-in is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn on convenience PIN sign-in" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn on convenience PIN sign-in') ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Logon ID:SVR016-46.7 Check:$result"
} else {
$result= "fail"
echo "Name: Logon ID:SVR016-46.7 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Logon","ID: SVR016-46.7","Description: Ensure Turn on convenience PIN sign-in is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Logon.txt"


echo ("Check: Logon, ID: SVR016-46.7, Description: Ensure Turn on convenience PIN sign-in is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Mitigation Options"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Untrusted Font Blocking" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Untrusted Font Blocking') ; $var = $var -replace ".{18}$"

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Mitigation Options" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('Mitigation Options') | select -Skip 2

$var2 = $var + $var1



if($var2 -like 'EnabledBlock untrusted fonts and log events') {
$result= "pass"
echo "Name: Mitigation Options ID:SVR016-47.1 Check:$result"
} else {
$result= "fail"
echo "Name: Mitigation Options ID:SVR016-47.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Mitigation Options","ID: SVR016-47.1","Description: Ensure Untrusted Font Blocking is set to Enabled: Block untrusted fonts and log events","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Mitigation Options.txt"


echo ("Check: Mitigation Options, ID: SVR016-47.1, Description: Ensure Untrusted Font Blocking is set to Enabled: Block untrusted fonts and log events, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Sleep Settings"

echo " "
echo " "


$var = $null
$var1 = $null
$var2 = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow network connectivity during connected-standby (on battery)" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow network connectivity during connected-standby ')  ; $var = $var -replace ".{18}$"


if($var -like '(on battery)Disabled') {
$result= "pass"
echo "Name: Sleep Settings ID:SVR016-48.1 Check:$result"
} else {
$result= "fail"
echo "Name: Sleep Settings ID:SVR016-48.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Sleep Settings","ID: SVR016-48.1","Description: Ensure Allow network connectivity during connectedstandby (on battery) is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Sleep Settings.txt"


echo ("Check: Sleep Settings, ID: SVR016-48.1, Description: Ensure Allow network connectivity during connectedstandby (on battery) is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow network connectivity during connected-standby (plugged in)" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow network connectivity during connected-standby ')  ; $var = $var -replace ".{18}$"


if($var -like '(plugged in)Disabled') {
$result= "pass"
echo "Name: Sleep Settings ID:SVR016-48.2 Check:$result"
} else {
$result= "fail"
echo "Name: Sleep Settings ID:SVR016-48.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Sleep Settings","ID: SVR016-48.2","Description: Ensure Allow network connectivity during connectedstandby (plugged in) is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Sleep Settings.txt"


echo ("Check: Sleep Settings, ID: SVR016-48.2, Description: Ensure Allow network connectivity during connectedstandby (plugged in) is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Require a password when a computer wakes (on battery)" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Require a password when a computer wakes ')  ; $var = $var -replace ".{18}$"


if($var -like '(on battery)Enabled') {
$result= "pass"
echo "Name: Sleep Settings ID:SVR016-48.3 Check:$result"
} else {
$result= "fail"
echo "Name: Sleep Settings ID:SVR016-48.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Sleep Settings","ID: SVR016-48.3","Description: Ensure Require a password when a computer wakes (on battery) is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Sleep Settings.txt"


echo ("Check: Sleep Settings, ID: SVR016-48.3, Description: Ensure Require a password when a computer wakes (on battery) is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Require a password when a computer wakes (plugged in)" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Require a password when a computer wakes ')  ; $var = $var -replace ".{18}$"


if($var -like '(plugged in)Enabled') {
$result= "pass"
echo "Name: Sleep Settings ID:SVR016-48.4 Check:$result"
} else {
$result= "fail"
echo "Name: Sleep Settings ID:SVR016-48.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Sleep Settings","ID: SVR016-48.4","Description: Ensure Require a password when a computer wakes (plugged in) is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Sleep Settings.txt"


echo ("Check: Sleep Settings, ID: SVR016-48.4, Description: Ensure Require a password when a computer wakes (plugged in) is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Remote Assistance"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Configure Offer Remote Assistance" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Configure Offer Remote Assistance')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Remote Assistance ID:SVR016-49.1 Check:$result"
} else {
$result= "fail"
echo "Name: Remote Assistance ID:SVR016-49.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Remote Assistance","ID: SVR016-49.1","Description: Ensure Configure Offer Remote Assistance is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Remote Assistance.txt"


echo ("Check: Remote Assistance, ID: SVR016-49.1, Description: Ensure Configure Offer Remote Assistance is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Configure Solicited Remote Assistance" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Configure Solicited Remote Assistance')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Remote Assistance ID:SVR016-49.2 Check:$result"
} else {
$result= "fail"
echo "Name: Remote Assistance ID:SVR016-49.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Remote Assistance","ID: SVR016-49.2","Description: Ensure Configure Solicited Remote Assistance is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Remote Assistance.txt"


echo ("Check: Remote Assistance, ID: SVR016-49.2, Description: Ensure Configure Solicited Remote Assistance is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Remote Procedure Call"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Enable RPC Endpoint Mapper Client Authentication" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Enable RPC Endpoint Mapper Client Authentication')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Remote Procedure Call ID:SVR016-50.1 Check:$result"
} else {
$result= "fail"
echo "Name: Remote Procedure Call ID:SVR016-50.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Remote Procedure Call","ID: SVR016-50.1","Description: Ensure Enable RPC Endpoint Mapper Client Authentication is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Remote Procedure Call.txt"


echo ("Check: Remote Procedure Call, ID: SVR016-50.1, Description: Ensure Enable RPC Endpoint Mapper Client Authentication is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================

$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Restrict Unauthenticated RPC clients" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Restrict Unauthenticated RPC clients')  ; $var = $var -replace ".{18}$"

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"RPC Runtime Unauthenticated Client Restriction to Apply:" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('RPC Runtime Unauthenticated Client Restriction to Apply')  

$var2 = $var + $var1



if($var2 -like 'Enabled:Authenticated') {
$result= "pass"
echo "Name: Remote Procedure Call ID:SVR016-50.1 Check:$result"
} else {
$result= "fail"
echo "Name: Remote Procedure Call ID:SVR016-50.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Remote Procedure Call","ID: SVR016-50.1","Description: Ensure Restrict Unauthenticated RPC clients is set to Enabled: Authenticated","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Remote Procedure Call.txt"


echo ("Check: Remote Procedure Call, ID: SVR016-50.1, Description: Ensure Restrict Unauthenticated RPC clients is set to Enabled: Authenticated, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Microsoft Support Diagnostic Tool"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Microsoft Support Diagnostic Tool: Turn on MSDT interactive communication with support provider" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Microsoft Support Diagnostic Tool: Turn on MSDT interactive communication with support provider')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Microsoft Support Diagnostic Tool ID:SVR016-51.1 Check:$result"
} else {
$result= "fail"
echo "Name: Microsoft Support Diagnostic Tool ID:SVR016-51.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Microsoft Support Diagnostic Tool","ID: SVR016-51.1","Description: Ensure Microsoft Support Diagnostic Tool: Turn on MSDT interactive communication with support provider is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Microsoft Support Diagnostic Tool.txt"


echo ("Check: Microsoft Support Diagnostic Tool, ID: SVR016-51.1, Description: Ensure Microsoft Support Diagnostic Tool: Turn on MSDT interactive communication with support provider is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Windows Performance PerfTrack"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Enable/Disable PerfTrack" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Enable/Disable PerfTrack')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Windows Performance PerfTrack ID:SVR016-52.1 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Performance PerfTrack ID:SVR016-52.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Performance PerfTrack","ID: SVR016-52.1","Description: Ensure Enable/Disable PerfTrack is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Performance PerfTrack.txt"


echo ("Check: Windows Performance PerfTrack, ID: SVR016-52.1, Description: Ensure Enable/Disable PerfTrack is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "User Profiles"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off the advertising ID" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off the advertising ID')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: User Profiles ID:SVR016-53.1 Check:$result"
} else {
$result= "fail"
echo "Name: User Profiles ID:SVR016-53.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: User Profiles","ID: SVR016-53.1","Description: Ensure Turn off the advertising ID is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"User Profiles.txt"


echo ("Check: User Profiles, ID: SVR016-53.1, Description: Ensure Turn off the advertising ID is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo " Time Providers"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Enable Windows NTP Client" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Enable Windows NTP Client')  ; $var = $var -replace ".{20}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Time Providers ID:SVR016-54.1 Check:$result"
} else {
$result= "fail"
echo "Name: Time Providers ID:SVR016-54.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Time Providers","ID: SVR016-54.1","Description: Ensure Turn off the advertising ID is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Time Providers.txt"


echo ("Check: Time Providers, ID: SVR016-54.1, Description: Ensure Turn off the advertising ID is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Enable Windows NTP Server" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Enable Windows NTP Server')  ; $var = $var -replace ".{20}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Time Providers ID:SVR016-54.2 Check:$result"
} else {
$result= "fail"
echo "Name: Time Providers ID:SVR016-54.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Time Providers","ID: SVR016-54.2","Description: Ensure Enable Windows NTP Server is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Time Providers.txt"


echo ("Check: Time Providers, ID: SVR016-54.2, Description: Ensure Enable Windows NTP Server is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "App Package Deployment"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow a Windows app to share application data between users" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow a Windows app to share application data between users')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: App Package Deployment ID:SVR016-55.1 Check:$result"
} else {
$result= "fail"
echo "Name: App Package Deployment ID:SVR016-55.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: App Package Deployment","ID: SVR016-55.1","Description: Ensure Allow a Windows app to share application data between users is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"App Package Deployment.txt"


echo ("Check: App Package Deployment, ID: SVR016-55.1, Description: Ensure Allow a Windows app to share application data between users is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "App runtime"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow Microsoft accounts to be optional" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow Microsoft accounts to be optional')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: App runtime ID:SVR016-56.1 Check:$result"
} else {
$result= "fail"
echo "Name: App runtime ID:SVR016-56.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: App runtime","ID: SVR016-55.1","Description: Ensure Allow Microsoft accounts to be optional is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"App runtime.txt"


echo ("Check: App runtime, ID: SVR016-55.1, Description: Ensure Allow Microsoft accounts to be optional is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo "AutoPlay Policies"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Disallow Autoplay for non-volume devices" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Disallow Autoplay for non-volume devices')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: AutoPlay Policies ID:SVR016-57.1 Check:$result"
} else {
$result= "fail"
echo "Name: AutoPlay Policies ID:SVR016-57.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: AutoPlay Policies","ID: SVR016-57.1","Description: Ensure Disallow Autoplay for non-volume devices is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"AutoPlay Policies.txt"


echo ("Check: AutoPlay Policies, ID: SVR016-57.1, Description: Ensure Disallow Autoplay for non-volume devices is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Set the default behavior for AutoRun" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Set the default behavior for AutoRun')  ; $var = $var -replace ".{18}$"

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Default AutoRun Behavior" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('Default AutoRun Behavior') 

$var2 = $var + $var1


if($var2 -like 'EnabledDo not execute any autorun commands') {
$result= "pass"
echo "Name: AutoPlay Policies ID:SVR016-57.2 Check:$result"
} else {
$result= "fail"
echo "Name: AutoPlay Policies ID:SVR016-57.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: AutoPlay Policies","ID: SVR016-57.2","Description: Ensure Set the default behavior for AutoRun is set to Enabled: Do not execute any autorun commands","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"AutoPlay Policies.txt"


echo ("Check: AutoPlay Policies, ID: SVR016-57.2, Description: Ensure Set the default behavior for AutoRun is set to Enabled: Do not execute any autorun commands, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null
$var1 = $null
$var2 = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Autoplay" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off Autoplay')  ; $var = $var -replace ".{18}$" | select -SkipLast 1

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Autoplay" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('Turn off Autoplay on') | select -Skip 1

$var2 = $var + $var1



if($var2 -like 'Enabled:All drives') {
$result= "pass"
echo "Name: AutoPlay Policies ID:SVR016-57.3 Check:$result"
} else {
$result= "fail"
echo "Name: AutoPlay Policies ID:SVR016-57.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: AutoPlay Policies","ID: SVR016-57.3","Description: Ensure Turn off Autoplay is set to 'Enabled: All drives","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"AutoPlay Policies.txt"


echo ("Check: AutoPlay Policies, ID: SVR016-57.3, Description: Ensure Turn off Autoplay is set to 'Enabled: All drives, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Facial Features"

echo " "
echo " "


$var = $null
$var1 = $null
$var2 = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Use enhanced anti-spoofing when available" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Use enhanced anti-spoofing when available')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Facial Features ID:SVR016-58.1 Check:$result"
} else {
$result= "fail"
echo "Name: Facial Features ID:SVR016-58.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Facial Features","ID: SVR016-58.1","Description: Ensure Configure enhanced anti-spoofing is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Facial Features.txt"


echo ("Check: Facial Features, ID: SVR016-58.1, Description: Ensure Configure enhanced anti-spoofing is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Camera"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow Use of Camera" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow Use of Camera')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Camera ID:SVR016-59.1 Check:$result"
} else {
$result= "fail"
echo "Name: Camera ID:SVR016-59.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Camera","ID: SVR016-59.1","Description: Ensure Allow Use of Camera is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Camera.txt"


echo ("Check: Camera, ID: SVR016-59.1, Description: Ensure Allow Use of Camera is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Cloud Content"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Microsoft consumer experiences" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off Microsoft consumer experiences')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Cloud Content ID:SVR016-60.1 Check:$result"
} else {
$result= "fail"
echo "Name: Cloud Content ID:SVR016-60.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Cloud Content","ID: SVR016-60.1","Description: Ensure Turn off Microsoft consumer experiences is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Cloud Content.txt"


echo ("Check: Cloud Content, ID: SVR016-60.1, Description: Ensure Turn off Microsoft consumer experiences is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Connect"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Require pin for pairing" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Require pin for pairing')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Connectt ID:SVR016-61.1 Check:$result"
} else {
$result= "fail"
echo "Name: Connect ID:SVR016-601.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Connect","ID: SVR016-61.1","Description: Ensure Require pin for pairing is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Connect.txt"


echo ("Check: Connect, ID: SVR016-61.1, Description: Ensure Require pin for pairing is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Credential User Interface"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not display the password reveal button" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not display the password reveal button')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Credential User Interface ID:SVR016-62.1 Check:$result"
} else {
$result= "fail"
echo "Name: Credential User Interface ID:SVR016-62.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Credential User Interface","ID: SVR016-62.1","Description: Ensure Do not display the password reveal button is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Credential User Interface.txt"


echo ("Check: Credential User Interface, ID: SVR016-62.1, Description: Ensure Do not display the password reveal button is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Enumerate administrator accounts on elevation" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Enumerate administrator accounts on elevation')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Credential User Interface ID:SVR016-62.2 Check:$result"
} else {
$result= "fail"
echo "Name: Credential User Interface ID:SVR016-62.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Credential User Interface","ID: SVR016-62.2","Description: Ensure Enumerate administrator accounts on elevation is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Credential User Interface.txt"


echo ("Check: Credential User Interface, ID: SVR016-62.2, Description: Ensure Enumerate administrator accounts on elevation is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"




echo =====================================================================================


echo " "
echo " "

echo "Data Collection and Preview Builds"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow Telemetry" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow Telemetry')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Data Collection and Preview Builds ID:SVR016-63.1 Check:$result"
} else {
$result= "fail"
echo "Name: Data Collection and Preview Builds ID:SVR016-63.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Data Collection and Preview Builds","ID: SVR016-63.1","Description: Ensure Allow Telemetry is set to Enabled: 0 - Security [Enterprise Only] or Enabled: 1 - Basic","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Data Collection and Preview Builds.txt"


echo ("Check: Data Collection and Preview Builds, ID: SVR016-63.1, Description: Ensure Allow Telemetry is set to Enabled: 0 - Security [Enterprise Only] or Enabled: 1 - Basic, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Configure Connected User Experiences and Telemetry" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Configure Connected User Experiences and Telemetry')  ; $var = $var -replace ".{18}$"

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Proxy Server Name:" | % {$_ -replace"\<.*?\>"}

$var2 = $var + $var1


if($var2 -like 'EnabledProxy Server Name:disable') {
$result= "pass"
echo "Name: Data Collection and Preview Builds ID:SVR016-63.2 Check:$result"
} else {
$result= "fail"
echo "Name: Data Collection and Preview Builds ID:SVR016-63.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Data Collection and Preview Builds","ID: SVR016-63.2","Description: Ensure Configure Authenticated Proxy usage for the Connected User Experience and Telemetry service is set to Enabled:Disable Authenticated Proxy usage","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Data Collection and Preview Builds.txt"


echo ("Check: Data Collection and Preview Builds, ID: SVR016-63.2, Description: Ensure Configure Authenticated Proxy usage for the Connected User Experience and Telemetry service is set to Enabled:Disable Authenticated Proxy usage, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null
$var1 = $null
$var2 = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Disable pre-release features or settings" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Disable pre-release features or settings')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Data Collection and Preview Builds ID:SVR016-63.3 Check:$result"
} else {
$result= "fail"
echo "Name: Data Collection and Preview Builds ID:SVR016-63.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Data Collection and Preview Builds","ID: SVR016-63.3","Description: Ensure Disable pre-release features or settings is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Data Collection and Preview Builds.txt"


echo ("Check: Data Collection and Preview Builds, ID: SVR016-63.3, Description: Ensure Disable pre-release features or settings is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not show feedback notifications" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not show feedback notifications')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Data Collection and Preview Builds ID:SVR016-63.4 Check:$result"
} else {
$result= "fail"
echo "Name: Data Collection and Preview Builds ID:SVR016-63.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Data Collection and Preview Builds","ID: SVR016-63.4","Description: Ensure Do not show feedback notifications is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Data Collection and Preview Builds.txt"


echo ("Check: Data Collection and Preview Builds, ID: SVR016-63.4, Description: Ensure Do not show feedback notifications is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Toggle user control over Insider builds" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Toggle user control over Insider builds')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Data Collection and Preview Builds ID:SVR016-63.5 Check:$result"
} else {
$result= "fail"
echo "Name: Data Collection and Preview Builds ID:SVR016-63.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Data Collection and Preview Builds","ID: SVR016-63.5","Description: Ensure Toggle user control over Insider builds is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Data Collection and Preview Builds.txt"


echo ("Check: Data Collection and Preview Builds, ID: SVR016-63.5, Description: Ensure Toggle user control over Insider builds is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Application"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Control Event Log behavior when the log file reaches its maximum size" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Control Event Log behavior when the log file reaches its maximum size')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Application ID:SVR016-64.1 Check:$result"
} else {
$result= "fail"
echo "Name: Application ID:SVR016-64.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Application","ID: SVR016-64.1","Description: Ensure Application: Control Event Log behavior when the log file reaches its maximum size is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Application.txt"


echo ("Check: Application, ID: SVR016-64.1, Description: Ensure Application: Control Event Log behavior when the log file reaches its maximum size is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Specify the maximum log file size (KB)" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Specify the maximum log file size ') ; $var = $var -replace ".{18}$" | select -SkipLast 3 

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Maximum Log Size (KB)" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('Maximum Log Size ')  | select -SkipLast 3 

$var2 = $var + $var1


if($var2 -like '(KB)Enabled(KB)32768') {
$result= "pass"
echo "Name: Application ID:SVR016-64.2 Check:$result"
} else {
$result= "fail"
echo "Name: Application ID:SVR016-64.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Application","ID: SVR016-64.2","Description: Ensure Application: Specify the maximum log file size (KB) is set to 'Enabled: 32,768 or greater","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Application.txt"


echo ("Check: Application, ID: SVR016-64.2, Description: Ensure Application: Specify the maximum log file size (KB) is set to 'Enabled: 32,768 or greater, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Security"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Control Event Log behavior when the log file reaches its maximum size" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Control Event Log behavior when the log file reaches its maximum size')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Security ID:SVR016-65.1 Check:$result"
} else {
$result= "fail"
echo "Name: Security ID:SVR016-65.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Security","ID: SVR016-65.1","Description: Ensure Security: Control Event Log behavior when the log file reaches its maximum size is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Security.txt"


echo ("Check: Security, ID: SVR016-65.1, Description: Ensure Security: Control Event Log behavior when the log file reaches its maximum size is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Specify the maximum log file size (KB)" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Specify the maximum log file size ')  ; $var = $var -replace ".{18}$" | select -SkipLast 3

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Maximum Log Size (KB)" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('Maximum Log Size ') | select -SkipLast 3

$var2 = $var + $var1


if($var2 -like '(KB)Enabled(KB)32768') {
$result= "pass"
echo "Name: Security ID:SVR016-65.2 Check:$result"
} else {
$result= "fail"
echo "Name: Security ID:SVR016-65.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Security","ID: SVR016-65.2","Description: Ensure Security: Specify the maximum log file size (KB) is set to Enabled: 196,608 or greater","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Security.txt"


echo ("Check: Security, ID: SVR016-65.2, Description: Ensure Security: Specify the maximum log file size (KB) is set to Enabled: 196,608 or greater, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Setup"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Control Event Log behavior when the log file reaches its maximum size" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Control Event Log behavior when the log file reaches its maximum size')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Setup ID:SVR016-65.1 Check:$result"
} else {
$result= "fail"
echo "Name: Setup ID:SVR016-65.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Setup","ID: SVR016-65.1","Description: Ensure Setup: Control Event Log behavior when the log file reaches its maximum size is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Setup.txt"


echo ("Check: Setup, ID: SVR016-65.1, Description: Ensure Setup: Control Event Log behavior when the log file reaches its maximum size is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Specify the maximum log file size (KB)" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Specify the maximum log file size ')  ; $var = $var -replace ".{18}$" | select -SkipLast 3

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Maximum Log Size (KB)" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('Maximum Log Size ') | select -SkipLast 3

$var2 = $var + $var1


if($var2 -like '(KB)Enabled(KB)32768') {
$result= "pass"
echo "Name: Setup ID:SVR016-65.2 Check:$result"
} else {
$result= "fail"
echo "Name: Setup ID:SVR016-65.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Setup","ID: SVR016-65.2","Description: Ensure Setup: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Setup.txt"


echo ("Check: Setup, ID: SVR016-65.2, Description: Ensure Setup: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "System"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Control Event Log behavior when the log file reaches its maximum size" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Control Event Log behavior when the log file reaches its maximum size')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: System ID:SVR016-66.1 Check:$result"
} else {
$result= "fail"
echo "Name: System ID:SVR016-66.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: System","ID: SVR016-66.1","Description: Ensure System: Control Event Log behavior when the log file reaches its maximum size is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"System.txt"


echo ("Check: System, ID: SVR016-66.1, Description: Ensure System: Control Event Log behavior when the log file reaches its maximum size is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Specify the maximum log file size (KB)" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Specify the maximum log file size ')  ; $var = $var -replace ".{18}$" | select -SkipLast 3

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Maximum Log Size (KB)" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('Maximum Log Size ') | select -SkipLast 3

$var2 = $var + $var1


if($var2 -like '(KB)Enabled(KB)32768') {
$result= "pass"
echo "Name: System ID:SVR016-66.2 Check:$result"
} else {
$result= "fail"
echo "Name: System ID:SVR016-66.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: System","ID: SVR016-66.2","Description: Ensure System: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"System.txt"


echo ("Check: System, ID: SVR016-66.2, Description: Ensure System: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Previous Versions"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off Data Execution Prevention for Explorer" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off Data Execution Prevention for Explorer')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Previous Versions ID:SVR016-67.1 Check:$result"
} else {
$result= "fail"
echo "Name: Previous Versions ID:SVR016-67.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Previous Versions","ID: SVR016-67.1","Description: Ensure Turn off Data Execution Prevention for Explorer is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Previous Versions.txt"


echo ("Check: Previous Versions, ID: SVR016-67.1, Description: Ensure Turn off Data Execution Prevention for Explorer is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off heap termination on corruption" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off heap termination on corruption')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Previous Versions ID:SVR016-67.2 Check:$result"
} else {
$result= "fail"
echo "Name: Previous Versions ID:SVR016-67.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Previous Versions","ID: SVR016-67.2","Description: Ensure Turn off heap termination on corruption is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Previous Versions.txt"


echo ("Check: Previous Versions, ID: SVR016-67.2, Description: Ensure Turn off heap termination on corruption is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off shell protocol protected mode" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off shell protocol protected mode')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Previous Versions ID:SVR016-67.3 Check:$result"
} else {
$result= "fail"
echo "Name: Previous Versions ID:SVR016-67.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Previous Versions","ID: SVR016-67.3","Description: Ensure Turn off shell protocol protected mode is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Previous Versions.txt"


echo ("Check: Previous Versions, ID: SVR016-67.3, Description: Ensure Turn off shell protocol protected mode is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Windows Location Provider"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off location" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off location')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Windows Location Provider ID:SVR016-68.1 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Location Provider ID:SVR016-68.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Location Provider","ID: SVR016-68.1","Description: Ensure Turn off location is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Location Provider.txt"


echo ("Check: Windows Location Provider, ID: SVR016-68.1, Description: Ensure Turn off location is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "OneDrive"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prevent the usage of OneDrive for file storage" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Prevent the usage of OneDrive for file storage')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: OneDrive ID:SVR016-71.1 Check:$result"
} else {
$result= "fail"
echo "Name: OneDrive ID:SVR016-71.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: OneDrive","ID: SVR016-71.1","Description: Ensure Prevent the usage of OneDrive for file storage is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"OneDrive.txt"


echo ("Check: OneDrive, ID: SVR016-71.1, Description: Ensure Prevent the usage of OneDrive for file storage is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "RemoteFX USB Device Redirection"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prevent the usage of OneDrive for file storage" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Prevent the usage of OneDrive for file storage')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: RemoteFX USB Device Redirection ID:SVR016-72.1 Check:$result"
} else {
$result= "fail"
echo "Name: RemoteFX USB Device Redirection ID:SVR016-72.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: RemoteFX USB Device Redirection","ID: SVR016-72.1","Description: Ensure Do not allow passwords to be saved is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"RemoteFX USB Device Redirection.txt"


echo ("Check: RemoteFX USB Device Redirection, ID: SVR016-72.1, Description: Ensure Do not allow passwords to be saved is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Connections"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Restrict Remote Desktop Services users to a single Remote Desktop Services session" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Restrict Remote Desktop Services users to a single Remote Desktop Services session')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Connections ID:SVR016-72.1 Check:$result"
} else {
$result= "fail"
echo "Name: Connections ID:SVR016-72.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Connections","ID: SVR016-72.1","Description: Ensure Restrict Remote Desktop Services users to a single Remote Desktop Services session is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Connections.txt"


echo ("Check: Connections, ID: SVR016-72.1, Description: Ensure Restrict Remote Desktop Services users to a single Remote Desktop Services session is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Device and Resource Redirection"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not allow COM port redirection" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not allow COM port redirection')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Device and Resource Redirection ID:SVR016-73.1 Check:$result"
} else {
$result= "fail"
echo "Name: Device and Resource Redirection ID:SVR016-73.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Device and Resource Redirection","ID: SVR016-73.1","Description: Ensure Do not allow COM port redirection is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Device and Resource Redirection.txt"


echo ("Check: Device and Resource Redirection, ID: SVR016-73.1, Description: Ensure Do not allow COM port redirection is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not allow drive redirection" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not allow drive redirection')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Device and Resource Redirection ID:SVR016-73.2 Check:$result"
} else {
$result= "fail"
echo "Name: Device and Resource Redirection ID:SVR016-73.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Device and Resource Redirection","ID: SVR016-73.2","Description: Ensure Do not allow drive redirection is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Device and Resource Redirection.txt"


echo ("Check: Device and Resource Redirection, ID: SVR016-73., Description: Ensure Do not allow drive redirection is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not allow LPT port redirection" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not allow LPT port redirection')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Device and Resource Redirection ID:SVR016-73.3 Check:$result"
} else {
$result= "fail"
echo "Name: Device and Resource Redirection ID:SVR016-73.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Device and Resource Redirection","ID: SVR016-73.3","Description: Ensure Do not allow LPT port redirection is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Device and Resource Redirection.txt"


echo ("Check: Device and Resource Redirection, ID: SVR016-73.3, Description: Ensure Do not allow LPT port redirection is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not allow supported Plug and Play device redirection" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not allow supported Plug and Play device redirection')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Device and Resource Redirection ID:SVR016-73.4 Check:$result"
} else {
$result= "fail"
echo "Name: Device and Resource Redirection ID:SVR016-73.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check:Device and Resource Redirection","ID: SVR016-73.4","Description: Ensure Do not allow supported Plug and Play device redirection is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Device and Resource Redirection.txt"


echo ("Check: Device and Resource Redirection, ID: SVR016-73.4, Description: Ensure Do not allow supported Plug and Play device redirection is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Security"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Always prompt for password upon connection" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Always prompt for password upon connection')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Security ID:SVR016-74.1 Check:$result"
} else {
$result= "fail"
echo "Name: Security ID:SVR016-74.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Security","ID: SVR016-74.1","Description: Ensure Always prompt for password upon connection is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Security.txt"


echo ("Check: Security, ID: SVR016-74.1, Description: Ensure Always prompt for password upon connection is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Require secure RPC communication" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Require secure RPC communication')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Security ID:SVR016-74.2 Check:$result"
} else {
$result= "fail"
echo "Name: Security ID:SVR016-74.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Security","ID: SVR016-74.2","Description: Ensure Require secure RPC communication is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Security.txt"


echo ("Check: Security, ID: SVR016-74.2, Description: Ensure Require secure RPC communication is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Set client connection encryption level" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Set client connection encryption level')  ; $var = $var -replace ".{18}$"

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Encryption Level" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('Encryption Level')  

$var2 = $var + $var1


if($var2 -like 'EnabledHigh Level') {
$result= "pass"
echo "Name: Security ID:SVR016-74.3 Check:$result"
} else {
$result= "fail"
echo "Name: Security ID:SVR016-74.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Security","ID: SVR016-74.3","Description: Ensure Set client connection encryption level is set to Enabled: High Level","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Security.txt"


echo ("Check: Security, ID: SVR016-74.3, Description: Ensure Set client connection encryption level is set to Enabled: High Level, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Session Time Limits"

echo " "
echo " "


$var = $null
$var1 = $null
$var2 = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Set time limit for active but idle Remote Desktop Services sessions" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Set time limit for active but idle Remote Desktop Services sessions')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Session Time Limits ID:SVR016-75.1 Check:$result"
} else {
$result= "fail"
echo "Name: Session Time Limits ID:SVR016-75.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Session Time Limits","ID: SVR016-75.1","Description: Ensure Set time limit for active but idle Remote Desktop Services sessions is set to Enabled: 15 minutes or less","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Session Time Limits.txt"


echo ("Check: Session Time Limits, ID: SVR016-75.1, Description: Ensure Set time limit for active but idle Remote Desktop Services sessions is set to Enabled: 15 minutes or less, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Set time limit for disconnected sessions" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Set time limit for disconnected sessions')  ; $var = $var -replace ".{18}$"

$var1 = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"End a disconnected session" | % {$_ -replace"\<.*?\>"} ; $var1 = $var1 -replace('End a disconnected session')  

$var2 = $var + $var1


if($var2 -like 'Enabled1 minute') {
$result= "pass"
echo "Name: Session Time Limits ID:SVR016-75.2 Check:$result"
} else {
$result= "fail"
echo "Name: Session Time Limits ID:SVR016-75.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Session Time Limits","ID: SVR016-75.2","Description: Ensure Set time limit for disconnected sessions is set to Enabled: 1 minute","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Session Time Limits.txt"


echo ("Check: Session Time Limits, ID: SVR016-75.2, Description: Ensure Set time limit for disconnected sessions is set to Enabled: 1 minute, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Temporary folders"

echo " "
echo " "


$var = $null
$var1 = $null
$var2 = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not delete temp folders upon exit" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not delete temp folders upon exit')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Temporary folders ID:SVR016-76.1 Check:$result"
} else {
$result= "fail"
echo "Name: Temporary folders ID:SVR016-76.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Temporary folders","ID: SVR016-76.1","Description: Ensure Do not delete temp folders upon exit is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Temporary folders.txt"


echo ("Check: Temporary folders, ID: SVR016-76.1, Description: Ensure Do not delete temp folders upon exit is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Do not use temporary folders per session" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Do not use temporary folders per session')  ; $var = $var -replace ".{18}$" | select -Skip 1


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Temporary folders ID:SVR016-76.2 Check:$result"
} else {
$result= "fail"
echo "Name: Temporary folders ID:SVR016-76.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Temporary folders","ID: SVR016-76.2","Description: Ensure Do not use temporary folders per session is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Temporary folders.txt"


echo ("Check: Temporary folders, ID: SVR016-76.2, Description: Ensure Do not use temporary folders per session is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "RSS Feeds"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prevent downloading of enclosures" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Prevent downloading of enclosures')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: RSS Feeds ID:SVR016-77.1 Check:$result"
} else {
$result= "fail"
echo "Name: RSS Feeds ID:SVR016-77.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: RSS Feeds","ID: SVR016-77.1","Description: Ensure Prevent downloading of enclosures is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"RSS Feeds.txt"


echo ("Check: RSS Feeds, ID: SVR016-77.1, Description: Ensure Prevent downloading of enclosures is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "OCR"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow indexing of encrypted files" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow indexing of encrypted files')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: OCR ID:SVR016-78.2 Check:$result"
} else {
$result= "fail"
echo "Name: OCR ID:SVR016-78.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: OCR","ID: SVR016-78.2","Description: Ensure Allow indexing of encrypted files is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"OCR.txt"


echo ("Check: OCR, ID: SVR016-78.2, Description: Ensure Allow indexing of encrypted files is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Software Protection Platform"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn off KMS Client Online AVS Validation" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn off KMS Client Online AVS Validation')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Software Protection Platform ID:SVR016-79.1 Check:$result"
} else {
$result= "fail"
echo "Name: Software Protection Platform ID:SVR016-79.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Software Protection Platform","ID: SVR016-79.1","Description: Ensure Turn off KMS Client Online AVS Validation is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Software Protection Platform.txt"


echo ("Check: Software Protection Platform, ID: SVR016-79.1, Description: Ensure Turn off KMS Client Online AVS Validation is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "MAPS"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Configure local setting override for reporting to Microsoft MAPS" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Configure local setting override for reporting to Microsoft MAPS')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: MAPS ID:SVR016-80.1 Check:$result"
} else {
$result= "fail"
echo "Name: MAPS ID:SVR016-80.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: MAPS","ID: SVR016-80.1","Description: Ensure Configure local setting override for reporting to Microsoft MAPS is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"MAPS.txt"


echo ("Check: MAPS, ID: SVR016-80.1, Description: Ensure Configure local setting override for reporting to Microsoft MAPS is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Join Microsoft MAPS" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Join Microsoft MAPS')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: MAPS ID:SVR016-80.2 Check:$result"
} else {
$result= "fail"
echo "Name: MAPS ID:SVR016-80.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: MAPS","ID: SVR016-80.2","Description: Ensure Join Microsoft MAPS is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"MAPS.txt"


echo ("Check: MAPS, ID: SVR016-80.2, Description: Ensure Join Microsoft MAPS is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Real-time Protection"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn on behavior monitoring" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn on behavior monitoring')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Real-time Protection ID:SVR016-81.1 Check:$result"
} else {
$result= "fail"
echo "Name: Real-time Protection ID:SVR016-81.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Real-time Protection","ID: SVR016-81.1","Description: Ensure Turn on behavior monitoring is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Real-time Protection.txt"


echo ("Check: Real-time Protection, ID: SVR016-81.1, Description: Ensure Turn on behavior monitoring is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Reporting"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Configure Watson events" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Configure Watson events')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Reporting ID:SVR016-82.1 Check:$result"
} else {
$result= "fail"
echo "Name: Reporting ID:SVR016-82.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Reporting","ID: SVR016-82.1","Description: Ensure Configure Watson events is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Reporting.txt"


echo ("Check: Reporting, ID: SVR016-82.1, Description: Ensure Configure Watson events is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Scan"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Scan removable drives" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Scan removable drives')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Scan ID:SVR016-83.1 Check:$result"
} else {
$result= "fail"
echo "Name: Scan ID:SVR016-83.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Scan","ID: SVR016-83.1","Description: Ensure Scan removable drives is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Scan.txt"


echo ("Check: Scan, ID: SVR016-83.1, Description: Ensure Scan removable drives is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn on e-mail scanning" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn on e-mail scanning')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: Scan ID:SVR016-83.2 Check:$result"
} else {
$result= "fail"
echo "Name: Scan ID:SVR016-83.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Scan","ID: SVR016-83.2","Description: Ensure Turn on e-mail scanning is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Scan.txt"


echo ("Check: Scan, ID: SVR016-83.2, Description: Ensure Turn on e-mail scanning is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Windows Ink Workspace"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow suggested apps in Windows Ink Workspace" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow suggested apps in Windows Ink Workspace')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Windows Ink Workspace ID:SVR016-88.1 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Ink Workspace ID:SVR016-88.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Ink Workspace","ID: SVR016-88.1","Description: Ensure Allow suggested apps in Windows Ink Workspace is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Ink Workspace.txt"


echo ("Check: Windows Ink Workspace, ID: SVR016-88.1, Description: Ensure Allow suggested apps in Windows Ink Workspace is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow Windows Ink Workspace" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow Windows Ink Workspace')  ; $var = $var -replace ".{18}$"



if($var -like 'Enabled') {
$result= "pass"
echo "Name: Windows Ink Workspace ID:SVR016-88.2 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Ink Workspace ID:SVR016-88.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Ink Workspace","ID: SVR016-88.2","Description: Ensure Allow Windows Ink Workspace is set to Enabled: On, but disallow access above lock OR Disabled but not Enabled: On","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Ink Workspace.txt"


echo ("Check: Windows Ink Workspace, ID: SVR016-88.2, Description: Ensure Allow Windows Ink Workspace is set to Enabled: On, but disallow access above lock OR Disabled but not Enabled: On, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Windows Installer"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow user control over installs" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow user control over installs')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Windows Installer ID:SVR016-89.1 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Installer ID:SVR016-89.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Installer","ID: SVR016-89.1","Description: Ensure Allow user control over installs is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Installer.txt"


echo ("Check: Windows Installer, ID: SVR016-89.1, Description: Ensure Allow user control over installs is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Always install with elevated privileges" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Always install with elevated privileges')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Windows Installer ID:SVR016-89.2 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Installer ID:SVR016-89.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Installer","ID: SVR016-89.2","Description: Ensure Always install with elevated privileges is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Installer.txt"


echo ("Check: Windows Installer, ID: SVR016-89.2, Description: Ensure Always install with elevated privileges is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Prevent Internet Explorer security prompt for Windows Installer scripts" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Prevent Internet Explorer security prompt for Windows Installer scripts')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Windows Installer ID:SVR016-89.3 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Installer ID:SVR016-89.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Installer","ID: SVR016-89.3","Description: Ensure Prevent Internet Explorer security prompt for Windows Installer scripts is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Installer.txt"


echo ("Check: Windows Installer, ID: SVR016-89.3, Description: Ensure Prevent Internet Explorer security prompt for Windows Installer scripts is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Windows Logon Options"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Sign-in last interactive user automatically after a system-initiated restart" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Sign-in last interactive user automatically after a system-initiated restart')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Windows Logon Options ID:SVR016-90.1 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Logon Options ID:SVR016-90.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Logon Options","ID: SVR016-90.1","Description: Ensure Sign-in last interactive user automatically after a system-initiated restart is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Logon Options.txt"


echo ("Check: Windows Logon Options, ID: SVR016-90.1, Description: Ensure Sign-in last interactive user automatically after a system-initiated restart is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Windows PowerShell"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn on PowerShell Script Block Logging" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn on PowerShell Script Block Logging')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Windows PowerShell ID:SVR016-91.1 Check:$result"
} else {
$result= "fail"
echo "Name: Windows PowerShell ID:SVR016-91.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows PowerShell","ID: SVR016-91.1","Description: Ensure Turn on PowerShell Script Block Logging is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows PowerShell.txt"


echo ("Check: Windows PowerShell, ID: SVR016-91.1, Description: Ensure Turn on PowerShell Script Block Logging is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Turn on PowerShell Transcription" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Turn on PowerShell Transcription')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Windows PowerShell ID:SVR016-91.2 Check:$result"
} else {
$result= "fail"
echo "Name: Windows PowerShell ID:SVR016-91.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows PowerShell","ID: SVR016-91.2","Description: Ensure Turn on PowerShell Transcription is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows PowerShell.txt"


echo ("Check: Windows PowerShell, ID: SVR016-91.2, Description: Ensure Turn on PowerShell Transcription is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "WinRM Client"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow Basic authentication" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow Basic authentication')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: WinRM Client ID:SVR016-92.1 Check:$result"
} else {
$result= "fail"
echo "Name: WinRM Client ID:SVR016-92.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: WinRM Client","ID: SVR016-92.1","Description: Ensure Allow Basic authentication is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"WinRM Client.txt"


echo ("Check: WinRM Client, ID: SVR016-92.1, Description: Ensure Allow Basic authentication is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow unencrypted traffic" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow unencrypted traffic')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: WinRM Client ID:SVR016-92.2 Check:$result"
} else {
$result= "fail"
echo "Name: WinRM Client ID:SVR016-92.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: WinRM Client","ID: SVR016-92.2","Description: Ensure Allow unencrypted traffic is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"WinRM Client.txt"


echo ("Check: WinRM Client, ID: SVR016-92.2, Description: Ensure Allow unencrypted traffic is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Disallow Digest authentication" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Disallow Digest authentication')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: WinRM Client ID:SVR016-92.3 Check:$result"
} else {
$result= "fail"
echo "Name: WinRM Client ID:SVR016-92.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: WinRM Client","ID: SVR016-92.3","Description: Ensure Disallow Digest authentication is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"WinRM Client.txt"


echo ("Check: WinRM Client, ID: SVR016-92.3, Description: Ensure Disallow Digest authentication is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "WinRM Service"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow Basic authentication" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow Basic authentication')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: WinRM Service ID:SVR016-93.1 Check:$result"
} else {
$result= "fail"
echo "Name: WinRM Service ID:SVR016-93.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: WinRM Service","ID: SVR016-93.1","Description: Ensure Allow Basic authentication is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"WinRM Service.txt"


echo ("Check: WinRM Service, ID: SVR016-93.1, Description: Ensure Allow Basic authentication is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow remote server management through WinRM" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow remote server management through WinRM')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: WinRM Service ID:SVR016-93.2 Check:$result"
} else {
$result= "fail"
echo "Name: WinRM Service ID:SVR016-93.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: WinRM Service","ID: SVR016-93.2","Description: Ensure Allow remote server management through WinRM is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"WinRM Service.txt"


echo ("Check: WinRM Service, ID: SVR016-93.2, Description: Ensure Allow remote server management through WinRM is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow unencrypted traffic" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow unencrypted traffic')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: WinRM Service ID:SVR016-93.3 Check:$result"
} else {
$result= "fail"
echo "Name: WinRM Service ID:SVR016-93.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: WinRM Service","ID: SVR016-93.3","Description: Ensure Allow unencrypted traffic is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"WinRM Service.txt"


echo ("Check: WinRM Service, ID: SVR016-93.3, Description: Ensure Allow unencrypted traffic is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Disallow WinRM from storing RunAs credentials" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Disallow WinRM from storing RunAs credentials')  ; $var = $var -replace ".{18}$"


if($var -like 'Enabled') {
$result= "pass"
echo "Name: WinRM Service ID:SVR016-93.4 Check:$result"
} else {
$result= "fail"
echo "Name: WinRM Service ID:SVR016-93.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: WinRM Service","ID: SVR016-93.4","Description: Ensure Disallow WinRM from storing RunAs credentials is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"WinRM Service.txt"


echo ("Check: WinRM Service, ID: SVR016-93.4, Description: Ensure Disallow WinRM from storing RunAs credentials is set to Enabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo "Windows Remote Shell"

echo " "
echo " "


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Allow Remote Shell Access" | % {$_ -replace"\<.*?\>"} ; $var = $var -replace('Allow Remote Shell Access')  ; $var = $var -replace ".{18}$"


if($var -like 'Disabled') {
$result= "pass"
echo "Name: Windows Remote Shell ID:SVR016-94.1 Check:$result"
} else {
$result= "fail"
echo "Name: Windows Remote Shell ID:SVR016-94.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: Windows Remote Shell","ID: SVR016-94.1","Description: Ensure Allow Remote Shell Access is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Administrative Templates"\"Windows Remote Shell.txt"


echo ("Check: Windows Remote Shell, ID: SVR016-94.1, Description: Ensure Allow Remote Shell Access is set to Disabled, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


