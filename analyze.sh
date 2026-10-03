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
        echo "File and path both exists"
        return
        else
           echo "File Does not exists check Your file"
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
        echo "File exists"
        return
    else
        echo "File Does not exists check Your file"
        exit 1
    fi
}