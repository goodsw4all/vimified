#!/bin/bash

tmp_file=tmp.txt
filename=$1


echo "$1 $tmp_file $filename # of Argument = ${#@}"

if [[ -e $filename ]] && ((${#@} == 1)); then
	echo "Conversion Processing..."
else
	echo "File name is necessary Please type the name you want to convert"
	exit
fi

iconv -f euc-kr -t utf-8 $filename > $tmp_file && mv $tmp_file $filename 
echo "done"


