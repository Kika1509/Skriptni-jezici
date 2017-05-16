file = open("ulaz.txt", "r")
file = file.readlines()
print("Hyp#Q10#Q20#Q30#Q40#Q50#Q60#Q70#Q80#Q90")
k = 1
for line in file:
    br = []
    line = line.strip().split(' ')
    line = list(line)
    l = len(line)
    for i in range(l):
        line[i] = float(line[i])
    line.sort()
    counter = 1
    for percent in (0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9):
        vr = int(percent*len(str(line[counter-1])))
        counter+=1
        print vr
        br.append(line[vr])
    print(("%03d" % k)+'#'+str(br[0])+'#'+str(br[1])+'#'+str(br[2])+'#'+str(br[3])+'#'+str(br[4])+'#'+str(br[5])+'#'+str(br[6])+'#'+str(br[7])+'#'+str(br[8]))
    k+=1
