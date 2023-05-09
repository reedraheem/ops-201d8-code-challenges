# Script Name: code challenges 12                Script Name
# Author:   rsr                   Your Name
# Date of latest revision:      05/9/2023
# Purpose:                     Purpose


#Reference:Got examples from chat gpt 


#Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
$output = ipconfig /all
Set-Content -Path "network_report.txt" -Value $output




#Use Select-String to search network_report.txt and return only the IP version 4 address.
function Search-Report {
    $output = ipconfig /all
    Set-Content -Path "network_report.txt" -Value $output
    
    $ipv4Addresses = Select-String -Path "network_report.txt" -Pattern "IPv4 Address.*: ((\d{1,3}\.){3}\d{1,3})"
    $ipv4Addresses.Matches.Groups[1].Value
    
    Remove-Item -Path "network_report.txt"
}

Search-Report





#Remove the network_report.txt when you are finished searching it.
function Search-Report {
    $output = ipconfig /all
    Set-Content -Path "network_report.txt" -Value $output
    
    # Your code to search the report goes here
    
    Remove-Item -Path "network_report.txt"
}

Search-Report

