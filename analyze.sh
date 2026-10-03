#!/bin/bash

usage(){
    echo "========WELCOME TO Log File Analyzer========"
    echo
    echo "Usage : ./file_name.sh  -option argument"
    echo
    echo "Options:"
    echo "-h  Help menu"
    echo "-p  Log file with file path"
    echo "-f  Log file without file path"
    echo
    echo "Don't use -p and -f together use only 1 at a time"
}
check_path() {
    local temp=$(dirname "$path")
    if [ -d "$temp" ]; then 
        if [ -f "$path" ];then
        log=$(basename "$path")
        return
        else
           echo "File Does not exists in your given path check Your path/file"
           exit 1
        fi
    else 
        echo "Path does not check Your path"
        exit 1
    fi
}

check_file() {
    local temp="$file"
    if [ -s "$temp" ];then
        log="$file"
        return
    else
        echo "File Does not exists check Your file"
        exit 1
    fi
}

while getopts ":hp:f:" opt
do
  case $opt in
  p) path="$OPTARG"
    check_path ;;
  f) file="$OPTARG"
    check_file;;
  h) usage
  exit 1 ;;
  *) usage 
    exit 1 ;;
  esac
done

