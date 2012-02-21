#!/bin/bash


basee=$(basename $1)
ext=${basee##*.}
filename=${basee%.*}

if [[ ${ext} != txt ]];
then
    filename=${basee}
    ext=txt
fi

to=cleaneddata/${filename}.${ext}
if [[ -a ${to} ]] ;
then
   counter=1
   to=cleaneddata/${filename}_${counter}.${ext}
   while [ -f ${to} ] ;
   do
    to=cleaneddata/${filename}_${counter}.${ext}
    counter=$(($counter + 1))
   done
fi

cp $1 ${to}