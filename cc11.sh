# Script Name: code challenges 11                Script Name
# Author:   rsr                   Your Name
# Date of latest revision:      05/8/2023
# Purpose:                     Purpose


#Enable File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True



#Allow ICMP traffic
New-NetFirewallRule -DisplayName "Allow ICMPv4-In" -Protocol ICMPv4 -IcmpType 8 -Enabled True


#Enable Remote management
Enable-PSRemoting -Force


#Remove bloatware
Get-AppxPackage | Where-Object {$_.IsFramework -eq $false} | Remove-AppxPackage



#Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All



#Disable SMBv1, an insecure protocol
Set-SmbServerConfiguration -EnableSMB1Protocol $false

