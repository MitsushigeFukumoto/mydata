f = open('./Output.txt', 'w')
for i in range(ord('a'), ord('z')+1):
    f.write('{0}: {1}\n'.format(i, chr(i)))
f.close()
