###########################Credit##############################

# Version 2.0 06-July-2022

# IT-Security Team

# Title: Password Expiry Notification.


########################Start of Script###########################

# Please Configure the following variables....
$SMTPMessage = $null
$subject = $null
$Body = $null
$Name = $null
$EmailTo = $null

$EmailFrom = "AD-Alerts@znode.com"
$EmailCc = "itsupport@amla.io"
$SMTPServer = "smtp.sendgrid.net"
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $false
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("apikey", "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");
#$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)



#When the expirary date is less than the number below, the user will be notified

$expireindays = 15

#$from = "IT Support <itsupport@amla.io>"

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

    $emailaddress = $user.UserPrincipalName

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

    Your Password will expire $messageDays

    Steps to change the password:

    1. Open the fortinet VPN and connect to the VPN.
    2. Then connect to specific server via RDP.
    3. To change your password on remote server press 'CTRL + ALT + END' and chose Change Password.


    In case the user account is locked, please reach out to Amla-Support.

     
    Thanks 
    IT-Team 

    "

   

    # If Testing Is Enabled - Email Administrator

    if (($testing) -eq "Enabled")

    {

        $emailaddress = $emailaddress

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
       
        #Send-Mailmessage -smtpServer $smtpServer -from $from -to $emailaddress -subject $subject -body $body -bodyasHTML -priority High -Encoding $textEncoding
        #$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)   
        $EmailTo = $emailaddress
        $SMTPMessage = New-Object System.Net.Mail.MailMessage $EmailFrom, $EmailTo, $subject, $Body
        $SMTPMessage.cc.Add($EmailCc)
        
        $SMTPClient.Send($SMTPMessage) 

 

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