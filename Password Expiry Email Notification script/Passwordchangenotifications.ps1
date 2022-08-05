###########################Credit##############################

# Version 1.4 February 2016

# Robert Pearman (WSSMB MVP)

# TitleRequired.com

# Script to Automated Email Reminders when Users Passwords due to Expire.

# Requires: Windows PowerShell Module for Active Directory

# For assistance and ideas, visit the TechNet Gallery Q&A Page. http://gallery.technet.microsoft.com/Password-Expiry-Email-177c3e27/view/Discussions#content

########################Start of Script###########################

# Please Configure the following variables....

$smtpServer="aspmx.l.google.com"

#When the expirary date is less than the number below, the user will be notified

$expireindays = 10

$from = "IT Support <itsupport@amla.io>"

$logging = "Enabled" # Set to Disabled to Disable Logging

$logFile = "D:\logs.csv" # ie. “c:\mylog.csv”

$testing = "Enabled" # Set to Disabled to Email Users

#$testRecipient = "itsupport@amla.io"

#############################################################

# Check Logging Settings

if (($logging) -eq "Enabled")

{

    # Test Log File Path

    $logfilePath = (Test-Path $logFile)

    if (($logFilePath) -ne "True")

    {

        # Create CSV File and Headers

        New-Item $logfile -ItemType File

        Add-Content $logfile "Date,Name,EmailAddress,DaystoExpire,ExpiresOn,Notified"

    }

} # End Logging Check

# System Settings

$textEncoding = [System.Text.Encoding]::UTF8

$date = Get-Date -format ddMMyyyy

# End System Settings

 

# Get Users From AD who are Enabled, Passwords Expire and are Not Currently Expired

Import-Module ActiveDirectory

$users = get-aduser -filter * -properties Name, PasswordNeverExpires, PasswordExpired, PasswordLastSet, EmailAddress |where {$_.Enabled -eq "True"} | where { $_.PasswordNeverExpires -eq $false } | where { $_.passwordexpired -eq $false }

$DefaultmaxPasswordAge = (Get-ADDefaultDomainPasswordPolicy).MaxPasswordAge

 

# Process Each User for Password Expiry

foreach ($user in $users)

{

    $Name = $user.Name

    $emailaddress = $user.emailaddress

    $passwordSetDate = $user.PasswordLastSet

    $PasswordPol = (Get-AduserResultantPasswordPolicy $user)

    $sent = "" # Reset Sent Flag

    # Check for Fine Grained Password

    if (($PasswordPol) -ne $null)

    {

        $maxPasswordAge = ($PasswordPol).MaxPasswordAge

    }

    else

    {

        # No FGP set to Domain Default

        $maxPasswordAge = $DefaultmaxPasswordAge

    }

  

    $expireson = $passwordsetdate + $maxPasswordAge

    $today = (get-date)

    $daystoexpire = (New-TimeSpan -Start $today -End $Expireson).Days

        

    # Set Greeting based on Number of Days to Expiry.

    # Check Number of Days to Expiry

    $messageDays = $daystoexpire

 

    if (($messageDays) -gt "1")

    {

        $messageDays = "in " + "$daystoexpire" + " days."

    }

    else

    {

        $messageDays = "today."

    }

   # Email Subject Set Here

    $subject="Your password will expire $messageDays"

  

    # Email Body Set Here, Note You can use HTML, including Images.

    $body ="

    Dear $name,

    <p> Your Password will expire $messageDays<br>

    To change your password on a PC press CTRL ALT Delete and chose Change Password <br>

    <p>Thanks, <br> 

    </P>"

   

    # If Testing Is Enabled - Email Administrator

    if (($testing) -eq "Enabled")

    {

        $emailaddress = $testRecipient

    } # End Testing

 

    # If a user has no email address listed

    if (($emailaddress) -eq $null)

    {

        $emailaddress = $testRecipient    

    }# End No Valid Email

 

    # Send Email Message

    if (($daystoexpire -ge "0") -and ($daystoexpire -lt $expireindays))

    {

        $sent = "Yes"

        # If Logging is Enabled Log Details

        if (($logging) -eq "Enabled")

        {

            Add-Content $logfile "$date,$Name,$emailaddress,$daystoExpire,$expireson,$sent" 

        }

        # Send Email Message

        Send-Mailmessage -smtpServer $smtpServer -from $from -to $emailaddress -subject $subject -body $body -bodyasHTML -priority High -Encoding $textEncoding   

 

    } # End Send Message

    else # Log Non Expiring Password

    {

        $sent = "No"

        # If Logging is Enabled Log Details

        if (($logging) -eq "Enabled")

        {

            Add-Content $logfile "$date,$Name,$emailaddress,$daystoExpire,$expireson,$sent" 

        }        

    }

    

} # End User Processing