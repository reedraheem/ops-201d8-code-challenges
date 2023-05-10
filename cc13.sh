#!/bin/bash

# Script Name: code challenges 13               Script Name
# Author:   Raheem Sharif Reed                Your Name
# Date of latest revision:      05/10/2023
# Purpose:                     Purpose

#Run whois against a user input string.
echo "www.google.com:"
read domain

whois $domain



#Run dig against the user input string.
echo "www.google.com:"
read domain

dig $domain



#Run host against the user input string.
echo "www.google.com:"
read domain

host $domain



#Run nslookup against the user input string.
nslookup_domain() {
    nslookup $1
}

echo "www.google.com:"
read domain

nslookup_domain $domain

Done 