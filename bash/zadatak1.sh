proba="Ovo je proba"
echo $proba

lista_datoteka=*
echo $lista_datoteka

proba3="$proba. $proba. $proba. "

a=4
b=3
c=7
d=$((($a+4)*$b%$c))

broj_rijeci=$(cat *.txt | wc -w)

ls ~

cut -f 1,6,7 -d: /etc/passwd

ps -ef | tr -s " " | cut -f 1,2,8 -d$' '


