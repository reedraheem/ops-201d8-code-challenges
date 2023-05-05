

# Script Name:                 Script Name
# Author:   rsr                   Your Name
# Date of latest revision:      05/4/2023
# Purpose: Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
#Output all “error” type events from the System event log to a file on your desktop named errors.txt.
#Print to the screen all events with ID of 16 from the System event log.
#Print to the screen the most recent 20 entries from the System event log.’
#Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).

#Reference: Got a couple of examples from Chat gpt and https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/?view=powershell-5.1

Get-EventLog -LogName System -EntryType Error $Begin -Before $End '5/4/2023'
Get-EventLog -LogName System -EntryType Error | Out-File "$($env:userprofile)\Desktop\errors.txt"
Get-EventLog -LogName System -InstanceId 16
Get-EventLog -LogName System -Newest 20
Get-EventLog -LogName System -Newest 500 | Select-Object -Property Source



                      
