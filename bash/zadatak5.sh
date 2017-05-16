path=$1
name=$2
 
echo kazalo je $path
echo argument ime je $name
declare -i total=0
 
for folder in $(find $path -type d)
        do
        echo trenutni folder je $folder
 
        for file in `find "$folder" -maxdepth 1 -name "$name" `
                do
                        num=`wc -l $file | cut -d " " -f 1`
                        total=$((total + num))
                        echo trenutna $file
                        echo trenutni broj je $num trenutno ime$name
 
 
                done
        done
 
 
echo $total