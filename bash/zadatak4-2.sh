#!/bin/bash

startdir$1
enddir$2

if [ ! -d enddir]
        then
        mkdir enddir
  fi

for foto in `ls $startdir`
        do
        datum=`stat $foto | grep -i 'Modify:' | grep -i -E -o '[0-9]{4}-[0-9]{2}'`
        godina=`echo $datum | cut -d "-" -f 1`
        mjesec=`echo $datum | cut -d "-" -f 2`
        ndir="$enddir/$godina-$mjesec/"
        if [ ! -d $ndir ]
                then
                mkdir $ndir
                fi
        mv "$startdir$foto" "$ndir$foto"

done