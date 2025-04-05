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
        n) HERO="$OPTARG";;
        m) MOVIE_NAME="$OPTARG";;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
        :) USAGE; exit;;
        h|*) USAGE; exit;;
    esac
done