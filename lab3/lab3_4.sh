#!/bin/bash -eu

# standardowe wyjscie przekieruj do nicosci, a bledy posortuj (nie usuwaj duplikatow)
./fakaping.sh 2>&1 >/dev/null | sort

#  wszystkie errory zawierajace "permission denied" wyppisz na konsole i do pliku
./fakaping.sh 2>&1 | grep -i "permission denied" | sort -u | tee denied.log

# wszystkie unikalne linijki zapisz do pliku all.log i na konsole
./fakaping.sh 2>&1 | sort -u | tee all.log
