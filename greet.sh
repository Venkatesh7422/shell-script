#!/bin/bash

HERO=""

MOVIE_NAME=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <hero> -m <movie name>"
    echo "options::"
    echo " -n, is hero name"
    echo " -m, is movie name"
    echo "-h, is help and exit"
}

while getopts ":n:m:h" opt; do
    case $opt in
        n) HERO="$OPTORG";;
        m) MOVIE_NAME="$OPTORG";;
        h|*) USAGE; exit;;
    esac
done