def output(name):
    var = ''
    for i in range(1, name['r']+1):
        for j in range(1, name['s']+1):
            var += "%9g" % float(name.get((i, j), 0))
        var += '\n'
    print(var)

def load(name, i):
    data = open(name, 'r')
    file = data.read()
    file = file.split('\n\n')
    lines = file[i].split('\n')
    size = lines[0].split(' ')

    matrix = {}
    matrix['r'] = int(size[0])
    matrix['s'] = int(size[1])

    for line in lines[1:]:
        element = line.split(' ')
        first = int(element[0])
        second = int(element[1])
        matrix[(first, second)] = float(element[2])

    data.close()
    return matrix


def save(matrix, name):
    data = open(name, 'w')
    data.write(str(matrix['r']) + ' ' + str(matrix['s']) + '\n')
    for element in matrix.keys():
        if element != 'r' and element != 's':
            data.write(str(element[0]) + ' ' + str(element[1]) + ' ' + str(matrix[element]) + '\n')
    data.close()


mat1 = load("matrice.txt", 0)
mat2 = load("matrice.txt", 1)
print("Prva matrica:")
output(mat1)
print("Druga matrica:")
output(mat2)

if mat1['s'] != mat2['r']:
    exit("Matrice nisu ulancane!!!")

product = {}
product['r'] = mat1['r']
product['s'] = mat2['s']
for i in range(1, mat1['r']+1):
    for j in range(1, mat2['s']+1):
        product[(i, j)] = 0
        for k in range(1, mat1['s']+1):
            product[(i, j)] += float(mat1.get((i, k), 0) * mat2.get((k, j), 0))
        if product[(i, j)] == 0:
            del product[(i, j)]

print("Umnozak prve i druge matrice je:")
output(product)
save(product, "umnozak.txt")


