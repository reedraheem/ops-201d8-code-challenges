# Script Name: code challegne 10                Script Name
# Author:   rsr                   Your Name
# Date of latest revision:      05/5/2023
# Purpose:                     Purpose

#Reference: Got a couple of examples from chat gpt and https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process?view=powershell-7.3

#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object CPU -Descending | Format-Table Name, CPU -AutoSize

#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object Id -Descending | Format-Table Name, Id -AutoSize

#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5 Name, WorkingSet | Format-Table -AutoSize

#Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
Start-Process "msedge.exe" "https://owasp.org/www-project-top-ten/"

# Start the process Notepad ten times using a for loop.
for ($i = 1; $i -le 10; $i++) {
    Start-Process "notepad.exe"
}

#Close all instances of the Notepad.
Get-Process | Where-Object { $_.name -eq "notepad" } | Stop-Process

#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
Stop-Process -Id <4200> -Force



