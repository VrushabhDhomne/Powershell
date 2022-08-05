############################### File Detection ###############################################

$path = Test-Path -Path .\".\$date-OS AUDIT"\"Output"
 if ($path -eq 'True') 
 {
   Write-Host "Please delete the file present in current location name date-OS AUDIT"
   Exit 
 }

 ###############################################################################################



 ################################ Directory Creation ###########################################


 $date = get-date -f MM-dd-yyyy

 New-Item -Path .\".\$date-OS AUDIT"\"Output" -ItemType Directory

 New-Item -Path .\"Input" -ItemType Directory


 ################################################################################################

 
     
 ############################# To Generate the Input File #######################################


 .\Get-UserRights.ps1 -FileOutputPath C:\Users\$env:USERNAME\Desktop\OS-Audit\Input -FileOutputType CSV


 Get-GPResultantSetOfPolicy -ReportType html -Path C:\Users\$env:USERNAME\Desktop\OS-Audit\Input\GroupPolicy.html


 #################################################################################################
 
 &".\Accountpolicy.ps1"
 &".\Administrative Templates.ps1"
 &".\ADVANCED AUDIT POLICY CONFIGURATION.ps1"
 &".\Audit Policy.ps1"
 &".\Security Options.ps1"
 &".\Windows Firewall with Advance Security.ps1"