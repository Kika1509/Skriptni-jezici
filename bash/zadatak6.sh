list=`eval "echo \$"$#""`
 
if [ ! -d "$list" ]
        then
        mkdir "$list"
        echo kreiran je folder $list
        fi
declare -i counter=0
 
for num in $(seq $(($#-1)))
do
        dest=`eval "echo \$"$num""`
        if [[ -r "$dest" && -f "$dest" ]]
        then
                cp "$dest" "$list"
                ((counter++))
        else
        echo Greska pri kopiranju datoteke $dest
        fi
done
 
echo $counter datoteka je kopirano u $list