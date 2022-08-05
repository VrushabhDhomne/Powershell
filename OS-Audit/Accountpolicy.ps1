echo " "
echo " "

echo "ACCOUNT POLICY"

echo " "
echo " "


$var = $null

$var = net accounts | Select-String "password history" ; $var = $var -replace('Length of password history maintained:                ')

if($var -eq 24) {
$result= "pass"
echo "Name: Password Policy ID:SVR016-001.1 Check:$result"
} else {
$result= "fail"
echo "Name: Password Policy ID:SVR016-001.1 Check:$result"
}


# $date = get-date -f MM-dd-yyyy

# New-Item -Path D:\".\$date-OS AUDIT"\"Account Policy" -ItemType Directory

# New-Item -Path .\".\$date-OS AUDIT"\"Output" -ItemType Directory

# Write-Output ("Check: Password Policy","ID: SVR016-001.1","Description: Ensure Enforce password history is set to 24 or more passwords","Result: $result","  ") > .\".\$date-OS AUDIT"\"Account Policy"\"test.txt"

echo ("Check: Password Policy,ID: SVR016-001.1,Description: Ensure Enforce password history is set to 24 or more passwords,Result: $result","  ") > .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Maximum password age" 

if($var -like '<tr><td>Maximum password age</td><td>60 days</td><td>Account Policy</td></tr>') {
$result= "pass"
echo "Name: Password Policy ID:SVR016-001.2 Check:$result"
} else {
$result= "fail"
echo "Name: Password Policy ID:SVR016-001.2 Check:$result"
}

$date = get-date -f MM-dd-yyyy

# Write-Output ("Check: Password Policy","ID: SVR016-001.2","Description: Ensure Maximum password age is set to 60 or fewer days, but not 0","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Account Policy"\"Password policy.txt"


echo ("Check: Password Policy,ID: SVR016-001.2,Description: Ensure Maximum password age is set to 60 or fewer days, but not 0,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Minimum password age" 

if($var -like '<tr><td>Minimum password age</td><td>1 days</td><td>Account Policy</td></tr>') {
$result= "pass"
echo "Name: Password Policy ID:SVR016-001.3 Check:$result"
} else {
$result= "fail"
echo "Name: Password Policy ID:SVR016-001.3 Check:$result"
}

$date = get-date -f MM-dd-yyyy

# Write-Output ("Check: Password Policy","ID: SVR016-001.3","Description: Ensure Minimum password age is set to 1 or more day(s)","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Account Policy"\"Password policy.txt"


echo ("Check: Password Policy,ID: SVR016-001.3,Description: Ensure Minimum password age is set to 1 or more day(s),Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ==========================================================


$var = $null

$var = net accounts | Select-String "Minimum password length" ; $var1 = $var -replace('Minimum password length:                              ')

if($var1 -eq 14) {
$result= "pass"
echo "Name: Password Policy ID:SVR016-001.4 Check:$result"
} else {
$result= "fail"
echo "Name: Password Policy ID:SVR016-001.4 Check:$result"
}

$date = get-date -f MM-dd-yyyy

# Write-Output ("Check: Password Policy","ID: SVR016-001.4","Description: Ensure Minimum password length is set to 14 or more character(s)","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Account Policy"\"Password policy.txt"

echo ("Check: Password Policy,ID: SVR016-001.4,Description: Ensure Minimum password length is set to 14 or more character(s),Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Password must meet complexity requirements" 

if($var -like '<tr><td>Password must meet complexity requirements</td><td>Enabled</td><td>Account Policy</td></tr>') {
$result= "pass"
echo "Name: Password Policy ID:SVR016-001.5 Check:$result"
} else {
$result= "fail"
echo "Name: Password Policy ID:SVR016-001.5 Check:$result"
}

$date = get-date -f MM-dd-yyyy

# Write-Output ("Check: Password Policy","ID: SVR016-001.5","Description: Ensure Password must meet complexity requirements is set to Enabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Account Policy"\"Password policy.txt"


echo ("Check: Password Policy,ID: SVR016-001.5,Description: Ensure Password must meet complexity requirements is set to Enabled,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Store passwords using reversible encryption" 

if($var -like '<tr><td>Store passwords using reversible encryption</td><td>Disabled</td><td>Account Policy</td></tr>') {
$result= "pass"
echo "Name: Password Policy ID:SVR016-001.6 Check:$result"
} else {
$result= "fail"
echo "Name: Password Policy ID:SVR016-001.6 Check:$result"
}

$date = get-date -f MM-dd-yyyy

# Write-Output ("Check: Password Policy","ID: SVR016-001.6","Description: Ensure Store passwords using reversible encryption is set to Disabled","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Account Policy"\"Password policy.txt"


echo ("Check: Password Policy,ID: SVR016-001.6,Description: Ensure Store passwords using reversible encryption is set to Disabled,Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Account lockout duration" 

if($var -like '<tr><td>Account lockout duration</td><td>15 minutes</td><td>Account Policy</td></tr>') {
$result= "pass"
echo "Name: Password Policy ID:SVR016-001.7 Check:$result"
} else {
$result= "fail"
echo "Name: Password Policy ID:SVR016-001.7 Check:$result"
}

$date = get-date -f MM-dd-yyyy

# Write-Output ("Check: Password Policy","ID: SVR016-001.7","Description: Ensure Account lockout duration is set to 15 or more minute(s)","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Account Policy"\"Password policy.txt"


echo ("Check: Password Policy,ID: SVR016-001.7,Description: Ensure Account lockout duration is set to 15 or more minute(s),Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ==========================================================


$var = $null

$var = net accounts | Select-String "Lockout threshold:" ; $var1 = $var -replace('Lockout threshold:                                    ')

if($var1 -eq 3) {
$result= "pass"
echo "Name: Account Lockout Policy ID:SVR016-001.8 Check:$result"
} else {
$result= "fail"
echo "Name: Account Lockout Policy ID:SVR016-001.8 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: Account Lockout Policy","ID: SVR016-001.8","Description: Ensure Account lockout threshold is set to 10 or fewer invalid logon attempt(s), but not 0 (Scored)","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Account Policy"\"Account Lockout Policy.txt"

echo ("Check: Password Policy,ID: SVR016-001.8,Description: Ensure Account lockout threshold is set to 10 or fewer invalid logon attempt(s), but not 0 (Scored),Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ==========================================================


$var = $null

$var = Get-Content C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html | findstr /c:"Reset account lockout counter after" 

if($var -like '<tr><td>Reset account lockout counter after</td><td>15 minutes</td><td>Account Policy</td></tr>') {
$result= "pass"
echo "Name: Account Lockout Policy ID:SVR016-001.9 Check:$result"
} else {
$result= "fail"
echo "Name: Account Lockout Policy ID:SVR016-001.9 Check:$result"
}

$date = get-date -f MM-dd-yyyy

# Write-Output ("Check: Account Lockout Policy","ID: SVR016-001.9","Description: Ensure Reset account lockout counter after is set to 15 or more minute(s)","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Account Policy"\"Account Lockout Policy.txt"


echo ("Check: Account Lockout Policy,ID: SVR016-001.9,Description: Ensure Reset account lockout counter after is set to 15 or more minute(s),Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================
