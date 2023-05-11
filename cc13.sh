#!/bin/bash

# Script Name: code challenges 13               Script Name
# Author:   Raheem Sharif Reed                Your Name
# Date of latest revision:      05/10/2023
# Purpose:                     Purpose

#Run whois against a user input string.
whois $domain >> test.txt


#Run dig against the user input string.
dig $domain >> test.txt



#Run host against the user input string.
host $domain >> test.txt



#Run nslookup against the user input string.
nslookup_domain() {
    nslookup $1
}
nslookup_domain $domain >> test.txt
 