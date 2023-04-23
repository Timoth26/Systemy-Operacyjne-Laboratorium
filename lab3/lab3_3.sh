#!/bin/bash -eu

# zamien $HEADER$ na /temat/
sed -i 's/\$HEADERS\$\/temat\//g' groovies/*

# usun linijki zawierajace fraze 'Help docs:'
sed -i 's/Help docs:/d' groovies/*
 