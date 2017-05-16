grep -iE 'banana|jabuka|jagoda|dinja|lubenica' namirnice.txt

grep -ivE 'banana|jabuka|jagoda|dinja|lubenica' namirnice.txt > ne-voce.txt

grep -rE '[A-Z]{3}[[:digit:]]{6}' ~/Projekti/

find ./ -mtime +7 -mtime -14

for a in $(seq 1 15); do echo "$a"; done