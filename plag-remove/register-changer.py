######### store your input in input.s
########## output will be in output .s
f = open('input.s', 'r')
k = open('output.s', 'w')
m = [i for i in f]

arr1 = ["x"+str(i) for i in range(32)]
arr2 = ["temp"+str(i) for i in range(32)]

for i in m:

    for j in range(32):
        i = i.replace(arr1[j], arr2[j])

    for j in range(32):

        i = i.replace(arr2[j], arr1[(j+1) % 32])
    k.write(i)
