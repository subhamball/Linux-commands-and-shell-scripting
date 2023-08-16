#!/bin/bash
#str1="hi"
#str2="hii"

echo "enter two string"
read str1
read str2

if [ $str1 = $str2 ]
 then
  echo "match"
  else
  echo "not match"
fi