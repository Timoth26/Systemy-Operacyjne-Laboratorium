#!/bin/bash -eu

# wypisz wszystkich ktorych id jest liczba parzysta
cut -d ',' -f1- yolo.csv | grep '^[0-9]*[1,3,5,7,9],' 2> errors.txt

# wypisz imie kazdego kto jest wart dokladnie 2.99 lub 5.99 lub 9.99 (pomin miliony i milardy)
grep '\b2\.99[a-zA-Z]*\|\b5\.99[a-zA-Z]*\|\b9\.99[a-zA-Z]*\|\b2\.99$\|\b5\.99$\|\b9\.99$' yolo.csv | cut -d ',' -f2  2> errors.txt



