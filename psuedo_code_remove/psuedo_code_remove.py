import sys
file = open('venus_code.mc', 'r')
sys.stdout = open('new_code.mc', 'w')
"""
do not put () in comments
"""
for i in file:
    l = i.split()
    start = 2
    end = 5

    if '(' in i:
        end -= 1
    elif l[2] == 'auipc':
        end -= 1
    elif l[2] == 'jal':
        start = 5
        end = len(l)-1
    print(*l[start: end+1])
