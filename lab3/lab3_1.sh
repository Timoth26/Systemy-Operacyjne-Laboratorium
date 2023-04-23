#!/bin/bash -eu

# 10 unikalnych adresow IP w access_log
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" access_log | sort -u | head -n 10

# zapytania, ktore maja fraze "denied" w linku
grep "/denied" access_log

# zapytania z adresu IP
grep "64\.242\.88\.10 " access_log

# zapytania typu DELETE
grep "DELETE" access_log