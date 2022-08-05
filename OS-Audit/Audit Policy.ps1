echo " "
echo " "

echo "AUDIT POLICY"

echo " "
echo " "

echo "USER RIGHT ASSIGNMENT"
echo " "



$var=$null
$var1=$null
$var2=$null


$var = findstr /c:"Access this computer from the network" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Access this computer from the network" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2 = '"Administrators"'


$var3=$var + $var1 + $var2


if($var3 -like '"Access this computer from the network""NT AUTHORITY\Authenticated Users""Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.03 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.03 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.03","Description: Ensure Access this computer from the network is set to Administrators, Authenticated Users","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.03, Description:Ensure Access this computer from the network is set to Administrators, Authenticated Users, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ================================================

<#
$var=$null

$var = findstr /c:"Act as part of the operating system" ".\$date-OS AUDIT\Input\UserLogonRights.csv" 


if($var -like 'Act as part of the operating system,') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.04 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.04 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: User Right Assignment","ID: SVR016-002.04","Description: Ensure Act as part of the operating system is set to No One","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.04, Description: Ensure Act as part of the operating system is set to No One, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================
#>

$var=$null
$var1=$null
$var2=$null
$var3=$null
$var4=$null



$var = findstr /c:"Adjust memory quotas for a process" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Adjust memory quotas for a process" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2 = findstr /c:"Adjust memory quotas for a process" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var2=$var2.split(',')[6]

$var3 = findstr /c:"Adjust memory quotas for a process" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var3=$var3.split(',')[10]


$var4=$var + $var1 + $var2 + $var3


if($var4 -like '"Adjust memory quotas for a process""NT AUTHORITY\LOCAL SERVICE""BUILTIN\Administrators""NT AUTHORITY\NETWORK SERVICE"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.06 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.06 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.06","Description: Ensure Increase scheduling priority is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.06, Description: Ensure Increase scheduling priority is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Allow log on locally" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Allow log on locally" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Allow log on locally""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.07 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.07 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.07","Description: Ensure Allow log on locally is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.07, Description: Ensure Allow log on locally is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null
$var3=$null


$var = findstr /c:"Allow log on through Remote Desktop Services" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Allow log on through Remote Desktop Services" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2 = findstr /c:"Allow log on through Remote Desktop Services" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var2=$var2.split(',')[6]




$var3=$var + $var1 + $var2


if($var3 -like '"Allow log on through Remote Desktop Services""BUILTIN\Administrators""BUILTIN\Remote Desktop Users"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.09 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.09 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.09","Description: Ensure Allow log on through Remote Desktop Services is set to Administrators, Remote Desktop Users","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.09, Description:Ensure Allow log on through Remote Desktop Services is set to Administrators, Remote Desktop Users, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Back up files and directories" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Back up files and directories" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Back up files and directories""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.10 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.10 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.10","Description: Ensure Back up files and directories is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.10, Description: Ensure Back up files and directories is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Change the system time" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1]

$var1 = findstr /c:"Change the system time" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2 = findstr /c:"Change the system time" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var2=$var2.split(',')[6]

$var3 = $var + $var1 + $var2



if($var3 -like '"Change the system time""BUILTIN\Administrators""NT AUTHORITY\LOCAL SERVICE"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.11 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.11 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.11","Description: Ensure Change the system time is set to Administrators,LOCAL SERVICE","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.11, Description: Ensure Change the system time is set to Administrators,LOCAL SERVICE, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null
$var3 = $null

$var = findstr /c:"Change the system time" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1]

$var1 = findstr /c:"Change the system time" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2 = findstr /c:"Change the system time" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var2=$var2.split(',')[6]

$var3 = $var + $var1 + $var2

if($var3 -like '"Change the system time""BUILTIN\Administrators""NT AUTHORITY\LOCAL SERVICE"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.12 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.12 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.12","Description: Ensure Change the time zone is set to Administrators,LOCAL SERVICE","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.12, Description: Ensure Change the time zone is set to Administrators,LOCAL SERVICE, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null
$var3=$null
$var4=$null
$var5=$null

$var = findstr /c:"Create a pagefile" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Create a pagefile" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Create a pagefile""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.13 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.13 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.13","Description: Ensure Create a pagefile is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.13, Description: Ensure Create a pagefile is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

<#
$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Create a token object" ".\$date-OS AUDIT\Input\UserLogonRights.csv" 


if($var -like 'Create a token object,') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.14 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.14 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.14","Description: Ensure Create a token object is set to No One","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.14, Description: Ensure Create a token object is set to No One, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================
#>

$var=$null
$var1=$null
$var2=$null
$var3=$null
$var4=$null
$var5=$null

$var = findstr /c:"Create global objects" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Create global objects" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2 = findstr /c:"Create global objects" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var2=$var2.split(',')[6]

$var3 = findstr /c:"Create global objects" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var3=$var3.split(',')[10]

$var4 = findstr /c:"Create global objects" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var4=$var4.split(',')[14]

$var5=$var + $var1 + $var2 + $var3 + $var4


if($var5 -like '"Create global objects""NT AUTHORITY\SERVICE""BUILTIN\Administrators""NT AUTHORITY\LOCAL SERVICE""NT AUTHORITY\NETWORK SERVICE"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.15 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.15 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.15","Description: Ensure Create global objects is set to Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.15, Description: Ensure Create global objects is set to Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

<#
$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Create permanent shared objects" ".\$date-OS AUDIT\Input\UserLogonRights.csv"


if($var -like 'Create permanent shared objects,') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.16 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.16 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.16","Description: Ensure Create permanent shared objects is set to No One","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.16, Description: Ensure Create permanent shared objects is set to No One, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================
#>

$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Create symbolic links" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Create symbolic links" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Create symbolic links""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.18 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.18 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.18","Description: Ensure Create symbolic links is set to Administrators, NT VIRTUAL MACHINE\Virtual Machines","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.18, Description: Ensure Create symbolic links is set to Administrators, NT VIRTUAL MACHINE\Virtual Machines, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Debug programs" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Debug programs" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Debug programs""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.19 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.19 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.19","Description: Ensure Debug programs is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.19, Description: Ensure Debug programs is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Deny access to this computer from the network" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Deny access to this computer from the network" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Deny access to this computer from the network""BUILTIN\Guests"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.21 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.21 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.21","Description: Ensure Deny access to this computer from the network to include Guests, Local account and member of Administrators group","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.21, Description: Ensure Deny access to this computer from the network to include Guests, Local account and member of Administrators group, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Deny log on as a batch job" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Deny log on as a batch job" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Deny log on as a batch job""BUILTIN\Guests"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.22 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.22 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.22","Description: Ensure Deny log on as a batch job to include Guests","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.22, Description: Ensure Deny log on as a batch job to include Guests, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Deny log on as a service" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Deny log on as a service" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Deny log on as a service""BUILTIN\Guests"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.23 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.23 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.23","Description: Ensure Deny log on as a service to include Guests","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.23, Description: Ensure Deny log on as a service to include Guests, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Deny log on locally" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Deny log on locally" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Deny log on locally""BUILTIN\Guests"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.24 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.24 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.24","Description: Ensure Deny log on locally to include Guests","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.24, Description: Ensure Deny log on locally to include Guests, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Deny log on through Remote Desktop Services" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Deny log on through Remote Desktop Services" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Deny log on through Remote Desktop Services""BUILTIN\Guests"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.26 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.26 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.26","Description: Ensure Deny log on through Remote Desktop Services is set to Guests, Local account","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.26, Description: Ensure Deny log on through Remote Desktop Services is set to Guests, Local account, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

<#
$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Enable computer and user accounts to be trusted for delegation" ".\$date-OS AUDIT\Input\UserLogonRights.csv" 


if($var -like 'Enable computer and user accounts to be trusted for delegation,') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.28 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.28 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.28","Description: Ensure Enable computer and user accounts to be trusted for delegation is set to No One","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.28, Description: Ensure Enable computer and user accounts to be trusted for delegation is set to No One, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================
#>

$var=$null
$var1=$null
$var2=$null
$var3=$null


$var = findstr /c:"Force shutdown from a remote system" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Force shutdown from a remote system" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]


$var2=$var + $var1


if($var2 -like '"Force shutdown from a remote system""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.29 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.29 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.29","Description: Ensure Force shutdown from a remote system is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.29, Description:Ensure Force shutdown from a remote system is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null
$var3=$null

$var = findstr /c:"Generate security audits" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Generate security audits" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2 = findstr /c:"Generate security audits" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var2=$var2.split(',')[6]

$var3=$var + $var1 + $var2


if($var3 -like '"Generate security audits""NT AUTHORITY\NETWORK SERVICE""NT AUTHORITY\LOCAL SERVICE"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.30 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.30 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.30","Description: Ensure Generate security audits is set to LOCAL SERVICE, NETWORK SERVICE","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.30, Description: Ensure Generate security audits is set to LOCAL SERVICE, NETWORK SERVICE, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Impersonate a client after authentication" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Impersonate a client after authentication" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2 = findstr /c:"Impersonate a client after authentication" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var2=$var2.split(',')[6]

$var3 = findstr /c:"Impersonate a client after authentication" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var3=$var3.split(',')[10]

$var4 = findstr /c:"Impersonate a client after authentication" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var4=$var4.split(',')[14]

$var5 = findstr /c:"Impersonate a client after authentication" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var5=$var5.split(',')[18]


$var6=$var + $var1 + $var2 + $var3 + $var4 + $var5


if($var6 -like '"Impersonate a client after authentication""NT AUTHORITY\LOCAL SERVICE""BUILTIN\Administrators""NT AUTHORITY\NETWORK SERVICE""BUILTIN\IIS_IUSRS""NT AUTHORITY\SERVICE"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.32 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.32 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.32","Description: Ensure Impersonate a client after authentication is set to Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE and (when the Web Server (IIS) Role with Web Services Role Service is installed) IIS_IUSRS","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.32, Description: Ensure Impersonate a client after authentication is set to Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE and (when the Web Server (IIS) Role with Web Services Role Service is installed) IIS_IUSRS, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null
$var3=$null
$var4=$null
$var5=$null
$var6=$null

$var = findstr /c:"Increase scheduling priority" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Increase scheduling priority" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Increase scheduling priority""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.33 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.33 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.33","Description: Ensure Increase scheduling priority is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.33, Description: Ensure Increase scheduling priority is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null
$var3=$null
$var4=$null


$var = findstr /c:"Load and unload device drivers" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Load and unload device drivers" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]


$var2=$var + $var1 


if($var2 -like '"Load and unload device drivers""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.34 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.34 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.34","Description: Ensure Load and unload device drivers is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.34, Description: Ensure Load and unload device drivers is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"



echo ================================================

<#
$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Lock pages in memory" ".\$date-OS AUDIT\Input\UserLogonRights.csv" 


if($var -like 'Lock pages in memory,') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.35 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.35 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.35","Description: Ensure Lock pages in memory is set to No One","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.35, Description: Ensure Lock pages in memory is set to No One, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================
#>

$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Log on as a batch job" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Log on as a batch job" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Log on as a batch job""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.36 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.36 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.36","Description: Ensure Log on as a batch job is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.36, Description: Ensure Log on as a batch job is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null
$var3=$null


$var = findstr /c:"Manage auditing and security log" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Manage auditing and security log" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Manage auditing and security log""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.38 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.38 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.38","Description: Ensure Manage auditing and security log is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.38, Description: Ensure Manage auditing and security log is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================

<#
$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Modify an object label" ".\$date-OS AUDIT\Input\UserLogonRights.csv"


if($var -like 'Modify an object label,') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.39 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.39 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.39","Description: Ensure Modify an object label is set to No One","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.39, Description: Ensure Modify an object label is set to No One, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================
#>

$var=$null
$var1=$null
$var2=$null
$var3=$null


$var = findstr /c:"Modify firmware environment values" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Modify firmware environment values" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1


if($var2 -like '"Modify firmware environment values""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.40 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.40 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.40","Description: Ensure Modify firmware environment values is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.40, Description: Ensure Modify firmware environment values is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null


$var = findstr /c:"Perform volume maintenance tasks" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Perform volume maintenance tasks" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]


$var2=$var + $var1 


if($var2 -like '"Perform volume maintenance tasks""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.41 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.41 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.41","Description: Ensure Perform volume maintenance tasks is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.41, Description:Ensure Perform volume maintenance tasks is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null
$var3=$null


$var = findstr /c:"Profile single process" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Profile single process" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1 


if($var2 -like '"Profile single process""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.42 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.42 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.42","Description: Ensure Profile single process is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.42, Description:Ensure Profile single process is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Profile system performance" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1]

$var1 = findstr /c:"Profile system performance" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1 


if($var2 -like '"Profile system performance""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.43 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.43 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.43","Description: Ensure Profile system performance is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.43, Description: Ensure Profile system performance is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null
$var3=$null

$var = findstr /c:"Replace a process level token" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Replace a process level token" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2 = findstr /c:"Replace a process level token" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var2=$var2.split(',')[6]

$var3=$var + $var1 + $var2

if($var3 -like '"Replace a process level token""NT AUTHORITY\LOCAL SERVICE""NT AUTHORITY\NETWORK SERVICE"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.44 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.44 Check:$result"
}

$date = get-date -f MM-dd-yyyy


#Write-Output ("Check: User Right Assignment","ID: SVR016-002.44","Description: Ensure Replace a process level token is set to LOCAL SERVICE, NETWORK SERVICE","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.44, Description: Ensure Replace a process level token is set to LOCAL SERVICE, NETWORK SERVICE, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Restore files and directories" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1]

$var1 = findstr /c:"Restore files and directories" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1 


if($var2 -like '"Restore files and directories""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.45 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.45 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.45","Description: Ensure Restore files and directories is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.45, Description: Ensure Restore files and directories is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null

$var = findstr /c:"Shut down the system" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1]

$var1 = findstr /c:"Shut down the system" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]

$var2=$var + $var1 


if($var2 -like '"Shut down the system""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.46 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.46 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.46","Description: Ensure Shut down the system is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.46, Description: Ensure Shut down the system is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo ================================================


$var=$null
$var1=$null
$var2=$null
$var3=$null


$var = findstr /c:"Take ownership of files or other objects" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var=$var.split(',')[1] 

$var1 = findstr /c:"Take ownership of files or other objects" "C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\UserLogonRights.csv" ; $var1=$var1.split(',')[2]


$var2=$var + $var1 


if($var2 -like '"Take ownership of files or other objects""BUILTIN\Administrators"') {
$result= "pass"
echo "Name: User Right Assignment ID:SVR016-002.48 Check:$result"
} else {
$result= "fail"
echo "Name: User Right Assignment ID:SVR016-002.48 Check:$result"
}

$date = get-date -f MM-dd-yyyy

#Write-Output ("Check: User Right Assignment","ID: SVR016-002.48","Description: Ensure Take ownership of files or other objects is set to Administrators","Result: $result","  ") >> D:\".\$date-OS AUDIT"\"Audit Policy"\Result.txt

echo ("Check: User Right Assignment, ID: SVR016-002.48, Description: Ensure Take ownership of files or other objects is set to Administrators, Result: $result","  ") >> .\".\$date-OS AUDIT"\"Output"\"Final-Output.csv"


echo =====================================================================================
