echo " "
echo " "

echo "ADVANCED AUDIT POLICY CONFIGURATION"

echo " "
echo " "

echo SYSTEM
echo " "

$var=$null
$var = AuditPol /get /category:* | findstr /c:"IPsec Driver" 

if($var -like '  IPsec Driver                            Success and Failure') {
$result= "pass"
echo "Name: System ID:SVR016-022.1 Check:$result"
} else {
$result= "fail"
echo "Name: System ID:SVR016-022.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#New-Item -Path D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration" -ItemType Directory

#New-Item -Path .\".\$date-OS AUDIT"\"Output" -ItemType Directory

#Write-Output ("Check: System","ID: SVR016-022.1","Description: Ensure Audit IPsec Driver is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: System, ID:SVR016-022.1, Description: Ensure Audit IPsec Driver is set to Success and Failure, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var = AuditPol /get /category:* | findstr /c:"Other System Event"

if($var -like '  Other System Events                     Success and Failure') {
$result= "pass"
echo "Name: System ID:SVR016-022.2 Check:$result"
} else {
$result= "fail"
echo "Name: System ID:SVR016-022.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: System","ID: SVR016-022.2","Description: Ensure Audit Other System Events is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: System,ID: SVR016-022.2,Description: Ensure Audit Other System Events is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var = AuditPol /get /category:* | findstr /c:"Security State Change"

if($var -like '  Security State Change                   Success') {
$result= "pass"
echo "Name: System ID:SVR016-022.3 Check:$result"
} else {
$result= "fail"
echo "Name: System ID:SVR016-022.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: System","ID: SVR016-022.3","Description: Ensure Audit Security State Change is set to Success","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: System,ID: SVR016-022.3,Description: Ensure Audit Security State Change is set to Success,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var = AuditPol /get /category:* | findstr /c:"Security System Extension"

if($var -like '  Security System Extension               Success and Failure') {
$result= "pass"
echo "Name: System ID:SVR016-022.4 Check:$result"
} else {
$result= "fail"
echo "Name: System ID:SVR016-022.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: System","ID: SVR016-022.4","Description: Ensure Audit Security System Extension is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: System,ID: SVR016-022.4,Description: Ensure Audit Security System Extension is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================



$var=$null
$var = AuditPol /get /category:* | findstr /c:"System Integrity"

if($var -like '  System Integrity                        Success and Failure') {
$result= "pass"
echo "Name: System ID:SVR016-022.5 Check:$result"
} else {
$result= "fail"
echo "Name: System ID:SVR016-022.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: System","ID: SVR016-022.5","Description: Ensure Audit System Integrity is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: System,ID: SVR016-022.5,Description: Ensure Audit System Integrity is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================



echo " "
echo " "

echo LOGON/LOGOFF
echo " "

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Account Lockout" 

if($var -like '  Account Lockout                         Success and Failure') {
$result= "pass"
echo "Name: Logon/Logoff ID:SVR016-019.1 Check:$result"
} else {
$result= "fail"
echo "Name: Logon/Logoff ID:SVR016-019.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Logon/Logoff","ID: SVR016-019.1","Description: Ensure Audit Account Lockout is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Logon/Logoff,ID: SVR016-019.1,Description: Ensure Audit Account Lockout is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Group Membership"

if($var -like '  Group Membership                        Success') {
$result= "pass"
echo "Name: Logon/Logoff ID:SVR016-019.2 Check:$result"
} else {
$result= "fail"
echo "Name: Logon/Logoff ID:SVR016-019.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Logon/Logoff","ID: SVR016-019.2","Description: Ensure Audit Group Membership is set to Success","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Logon/Logoff,ID: SVR016-019.2,Description: Ensure Audit Group Membership is set to Success,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var = AuditPol /get /category:* | findstr "Logoff" | select -SkipLast 1

if($var -like '  Logoff                                  Success') {
$result= "pass"
echo "Name: Logon/Logoff ID:SVR016-019.3 Check:$result"
} else {
$result= "fail"
echo "Name: Logon/Logoff ID:SVR016-019.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Logon/Logoff","ID: SVR016-019.3","Description: Ensure Audit Logoff is set to Success","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Logon/Logoff,ID: SVR016-019.3,Description: Ensure Audit Logoff is set to Success,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var = AuditPol /get /category:* | findstr "Logon" | select -SkipLast 4

if($var -like '  Logon                                   Success and Failure') {
$result= "pass"
echo "Name: Logon/Logoff ID:SVR016-019.4 Check:$result"
} else {
$result= "fail"
echo "Name: Logon/Logoff ID:SVR016-019.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Logon/Logoff","ID: SVR016-019.4","Description: Ensure Audit Logon is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Logon/Logoff,ID: SVR016-019.4,Description: Ensure Audit Logon is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Other Logon/Logoff Events" 

if($var -like '  Other Logon/Logoff Events               Success and Failure') {
$result= "pass"
echo "Name: Logon/Logoff ID:SVR016-019.5 Check:$result"
} else {
$result= "fail"
echo "Name: Logon/Logoff ID:SVR016-019.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Logon/Logoff","ID: SVR016-019.5","Description: Ensure Audit Other Logon/Logoff Events is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Logon/Logoff,ID: SVR016-019.5,Description: Ensure Audit Other Logon/Logoff Events is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Special Logon" 

if($var -like '  Special Logon                           Success') {
$result= "pass"
echo "Name: Logon/Logoff ID:SVR016-019.6 Check:$result"
} else {
$result= "fail"
echo "Name: Logon/Logoff ID:SVR016-019.6 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Logon/Logoff","ID: SVR016-019.6","Description: Ensure Audit Special Logon is set to Success","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Logon/Logoff,ID: SVR016-019.6,Description: Ensure Audit Special Logon is set to Success,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo 'OBJECT ACCESS'
echo " "

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Other Object Access Events" 

if($var -like '  Other Object Access Events              Success and Failure') {
$result= "pass"
echo "Name: Object Access ID:SVR016-020.1 Check:$result"
} else {
$result= "fail"
echo "Name: Object Access ID:SVR016-020.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Object Access","ID: SVR016-020.1","Description: Ensure Audit Other Object Access Events is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"


echo ("Check: Object Access,ID: SVR016-020.1,Description: Ensure Audit Other Object Access Events is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"

echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Removable Storage" 

if($var -like '  Removable Storage                       Success and Failure') {
$result= "pass"
echo "Name: Object Access ID:SVR016-020.2 Check:$result"
} else {
$result= "fail"
echo "Name: Object Access ID:SVR016-020.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Object Access","ID: SVR016-020.2","Description: Ensure Audit Removable Storage is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"


echo ("Check: Object Access,ID: SVR016-020.2,Description: Ensure Audit Removable Storage is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================



echo " "
echo " "

echo 'POLICY CHANGE'
echo " "

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Audit Policy Change"

if($var -like '  Audit Policy Change                     Success and Failure') {
$result= "pass"
echo "Name: Policy Change ID:SVR016-020.1 Check:$result"
} else {
$result= "fail"
echo "Name: Policy Change ID:SVR016-020.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Policy Change","ID: SVR016-020.1","Description: Ensure Audit Audit Policy Change is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Policy Change,ID: SVR016-020.1,Description: Ensure Audit Audit Policy Change is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Authentication Policy Change"

if($var -like '  Authentication Policy Change            Success') {
$result= "pass"
echo "Name: Policy Change ID:SVR016-020.2 Check:$result"
} else {
$result= "fail"
echo "Name: Policy Change ID:SVR016-020.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Policy Change","ID: SVR016-020.2","Description: Ensure Audit Authentication Policy Change is set to Success","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Policy Change,ID: SVR016-020.2,Description: Ensure Audit Authentication Policy Change is set to Success,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ================================================


$var=$null
$var = AuditPol /get /category:* | findstr /c:"Authorization Policy Change" 

if($var -like '  Authorization Policy Change             Success') {
$result= "pass"
echo "Name: Policy Change ID:SVR016-020.3 Check:$result"
} else {
$result= "fail"
echo "Name: Policy Change ID:SVR016-020.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Policy Change","ID: SVR016-020.3","Description: Ensure Audit Authorization Policy Change is set to Success","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Policy Change,ID: SVR016-020.3,Description: Ensure Audit Authorization Policy Change is set to Success,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo 'PRIVILEGE USE'
echo " "

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Sensitive Privilege Use" | select -Skip 1

if($var -like '  Sensitive Privilege Use                 Success and Failure') {
$result= "pass"
echo "Name: Privilege Use ID:SVR016-021.1 Check:$result"
} else {
$result= "fail"
echo "Name: Privilege Use ID:SVR016-021.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Privilege Use","ID: SVR016-021.1","Description: Ensure Audit Sensitive Privilege Use is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Privilege Use,ID: SVR016-021.1,Description: Ensure Audit Sensitive Privilege Use is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo 'DETAILED TRACKING'
echo " "

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Plug and Play Events"

if($var -like '  Plug and Play Events                    Success') {
$result= "pass"
echo "Name: Detailed Tracking ID:SVR016-017.1 Check:$result"
} else {
$result= "fail"
echo "Name: Detailed Trackingy ID:SVR016-017.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Detailed Tracking","ID: SVR016-017.1","Description: Ensure Audit PNP Activity is set to Success","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Detailed Tracking,ID: SVR016-017.1,Description: Ensure Audit PNP Activity is set to Success,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null

$var = AuditPol /get /category:* | findstr /c:"Process Creation"

if($var -like '  Process Creation                        Success') {
$result= "pass"
echo "Name: Detailed Tracking ID:SVR016-017.2 Check:$result"
} else {
$result= "fail"
echo "Name: Detailed Tracking ID:SVR016-017.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Detailed Tracking","ID: SVR016-017.2","Description: Ensure Audit Process Creation is set to Success","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Detailed Tracking,ID: SVR016-017.2,Description: Ensure Audit Process Creation is set to Success,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================


echo " "
echo " "

echo 'DS ACCESS'
echo " "

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Directory Service Access"

if($var -like '  Directory Service Access                Failure') {
$result= "pass"
echo "Name: DS Access ID:SVR016-018.1 Check:$result"
} else {
$result= "fail"
echo "Name: DS Access ID:SVR016-018.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: DS Access","ID: SVR016-018.1","Description: Ensure Audit Directory Service Access is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: DS Access,ID: SVR016-018.1,Description: Ensure Audit Directory Service Access is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Directory Service Changes" 

if($var -like '  Directory Service Changes               Success') {
$result= "pass"
echo "Name: DS Access ID:SVR016-018.2 Check:$result"
} else {
$result= "fail"
echo "Name: DS Access ID:SVR016-018.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: DS Access","ID: SVR016-018.2","Description: Ensure Audit Directory Service Changes is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: DS Access,ID: SVR016-018.2,Description: Ensure Audit Directory Service Changes is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo 'ACCOUNT LOGON'
echo " "

$var=$null
$var = AuditPol /get /category:* | findstr "Credential Validation"

if($var -like '  Credential Validation                   Success and Failure') {
$result= "pass"
echo "Name: Account Logon ID:SVR016-017.1 Check:$result"
} else {
$result= "fail"
echo "Name: Account Logon ID:SVR016-017.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Account Logon","ID: SVR016-017.1","Description: Ensure Audit Credential Validation is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Account Logon,ID: SVR016-017.1,Description: Ensure Audit Credential Validation is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Kerberos Authentication Service" 

if($var -like '  Kerberos Authentication Service         Success and Failure') {
$result= "pass"
echo "Name: Account Logon ID:SVR016-017.2 Check:$result"
} else {
$result= "fail"
echo "Name: Account Logon ID:SVR016-017.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Account Logon","ID: SVR016-017.2","Description: Ensure Audit Kerberos Authentication Service is set to  Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Account Logon,ID: SVR016-017.2,Description: Ensure Audit Kerberos Authentication Service is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Kerberos Service Ticket Operations" 

if($var -like '  Kerberos Service Ticket Operations      Success and Failure') {
$result= "pass"
echo "Name: Account Logon ID:SVR016-017.3 Check:$result"
} else {
$result= "fail"
echo "Name: Account Logon ID:SVR016-017.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Account Logon","ID: SVR016-017.3","Description: Ensure Audit Kerberos Service Ticket Operations is set to  Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Account Logon,ID: SVR016-017.3,Description: Ensure Audit Kerberos Service Ticket Operations is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo =====================================================================================


echo " "
echo " "

echo 'ACCOUNT MANAGEMENT'
echo " "

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Application Group Management" 

if($var -like '  Application Group Management            Success and Failure') {
$result= "pass"
echo "Name: Account Management ID:SVR016-017.1 Check:$result"
} else {
$result= "fail"
echo "Name: Account Management ID:SVR016-017.1 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Account Management","ID: SVR016-017.1","Description: Ensure Audit Application Group Management is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Account Management,ID: SVR016-017.1,Description: Ensure Audit Application Group Management is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Computer Account Management" 

if($var -like '  Computer Account Management             Success and Failure') {
$result= "pass"
echo "Name: Account Management ID:SVR016-017.2 Check:$result"
} else {
$result= "fail"
echo "Name: Account Management ID:SVR016-017.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Account Management","ID: SVR016-017.2","Description: Ensure Audit Computer Account Management is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Account Management,ID: SVR016-017.2,Description: Ensure Audit Computer Account Management is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"Distribution Group Management"

if($var -like '  Distribution Group Management           Success and Failure') {
$result= "pass"
echo "Name: Account Management ID:SVR016-017.3 Check:$result"
} else {
$result= "fail"
echo "Name: Account Management ID:SVR016-017.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Account Management","ID: SVR016-017.3","Description: Ensure Audit Distribution Group Management is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Account Management,ID: SVR016-017.3,Description: Ensure Audit Distribution Group Management is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var = AuditPol /get /category:* | findstr /c:"Other Account Management Events"

if($var -like '  Other Account Management Events         Success and Failure') {
$result= "pass"
echo "Name: Account Management ID:SVR016-017.4 Check:$result"
} else {
$result= "fail"
echo "Name: Account Management ID:SVR016-017.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Account Management","ID: SVR016-017.4","Description: Ensure Audit Other Account Management Events is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Account Management,ID: SVR016-017.4,Description: Ensure Audit Other Account Management Events is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var = AuditPol /get /category:* | findstr /c:"Security Group Management" 

if($var -like '  Security Group Management               Success and Failure') {
$result= "pass"
echo "Name: Account Management ID:SVR016-017.5 Check:$result"
} else {
$result= "fail"
echo "Name: Account Management ID:SVR016-017.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Account Management","ID: SVR016-017.5","Description: Ensure Audit Security Group Management is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Account Management,ID: SVR016-017.5,Description: Ensure Audit Security Group Management is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

$var=$null
$var = AuditPol /get /category:* | findstr /c:"User Account Management" 

if($var -like '  User Account Management                 Success and Failure') {
$result= "pass"
echo "Name: Account Management ID:SVR016-017.6 Check:$result"
} else {
$result= "fail"
echo "Name: Account Management ID:SVR016-017.6 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Account Management","ID: SVR016-017.6","Description: Ensure Audit User Account Management is set to Success and Failure","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"AdvanceAuditPolicyConfiguration"\"result.txt"

echo ("Check: Account Management,ID: SVR016-017.6,Description: Ensure Audit User Account Management is set to Success and Failure,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================