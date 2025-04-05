#!/bin/bash

HERO=""

MOVIE_NAME=""

USAGE(){
    echo "USAGE:: $(basename $0) -h <hero> -m <movie name>"
    echo "options::"
    echo " -h, is hero name"
    echo " -m, is movie name"
    echo "-h, is help and exit"
}

While getopts ":h:m:h" opt; do
    case $opt in
        h) HERO="$optorg";;
        m) MOVIE_NAME="$optorg";;
        h|*) USAGE: exit;;
    esac
done