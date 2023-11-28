#!/bin/sh

echo "Type git commit comment ..."
read str

if [ -z "$str" ]; then
  str="update"
fi

str2="git commit -m "
strd='"'
str3="${strd}${str}${strd}"
str4="${str2}${str3}"


echo $str4

git add .
git commit -m "$str3"
git push origin main