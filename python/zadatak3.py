import os
import re

file = open('studenti.txt', 'r')
lines = file.readlines()

student = {}
st = []
practice=[]

for line in lines:
    JMBAG,Surname,Name = line.rstrip().split(' ')
    student[JMBAG] = {'Surname': Surname, 'Name': Name}
    st.append(JMBAG)

file.close()


list = os.listdir('.')

for data in list:
    if re.match('(Lab_[0-9]+_g[0-9]+.txt)', data):
        d = open(data, 'r')
        file = d.readlines()
        pr = int(data.split('_')[1])
        if pr not in practice:
            practice.append(pr)
        for line in file:
            if not student.get(line.split(" ")[0],0).get(pr,0):
                student[line.split(" ")[0]][pr] = float(line.split(" ")[1])
            else:
                print("UPOZORENJE!!!")
                print(student[line.split(" ")[0]]["Name"], student[line.split(" ")[0]]["Surname"], "je vec pristupio/la", str(pr) + ".", "vjezbi!")
        d.close()

L = len(practice)

print("JMBAG \t Prezime, Ime \t ")
for i in range(L):
    print("\tL" + str(i+1))
print "**"
for i in st:
    print(i + "  " + "%-20s" % (student[i]["Surname"] + ", " + student[i]["Name"]))
    for j in range(1, L+1):
        print("    " + "%-3.1f" % (student.get(i,0).get(j,0)))
    print "**"
