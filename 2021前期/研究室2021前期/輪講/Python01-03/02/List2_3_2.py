data = [
    ['asahikawa', 30.1, 11.9], ['sapporo', 30.7, 14.5], ['hakodate', 25.2, 12.4],
    ['aomori', 26.0, 12.8], ['morioka', 30.5, 17.0], ['sendai', 25.3, 18.1],
    ['akita', 28.1, 15.9], ['yamagata', 31.4, 16.0], ['fukusima', 30.5, 17.4],
    ['tokyo', 29.1, 18.5], ['yokohama', 28.5, 19.4], ['kumagaya', 30.7, 17.7],
    ['tiba', 28.3, 19.1], ['mito', 26.3, 15.6], ['utunomiya', 29.5, 17.5],
    ['maehasi', 31.2, 17.9], ['koufu', 32.0, 16.2], ['nagano', 30.1, 15.5],
    ['niigata', 26.4, 17.2], ['toyama', 29.0, 16.5], ['kanazawa', 28.2, 19.4],
    ['fukui', 29.4, 18.7], ['nagoya', 29.6, 19.8], ['gifu', 29.6, 19.6],
    ['sizuoka', 27.7, 16.9], ['tu', 26.9, 19.1], ['osaka', 30.2, 19.4],
    ['kobe', 28.3, 19.9], ['kyoto', 31.3, 18.9], ['hikone', 28.0, 17.4],
    ['nara', 31.1, 17.1], ['wakayama', 27.0, 18.8], ['totori', 30.0, 15.9],
    ['matue', 29.2, 16.8], ['okayama', 29.8, 16.8], ['hirosima', 28.1, 18.0],
    ['yamaguti', 29.5, 16.7], ['tokusima', 28.4, 17.6], ['takamatu', 28.5, 17.9],
    ['matuyama', 28.6, 17.3], ['koti', 27.6, 17.5], ['fukuoka', 29.3, 20.5],
    ['saga', 30.5, 19.9], ['nagasaki', 28.4, 18.7], ['kumamoto', 30.3, 18.9],
    ['oita', 28.3, 18.4], ['miyazaki', 26.4, 20.0], ['kagosima', 28.7, 21.9],
    ['naha', 29.7, 23.9]]

f = open('./02/temp.txt', 'w')
for v in data:
    print("'{}',".format(v[0]), end='')
    f.write("'{}',".format(v[0]))

print('\n')
f.write('\n\n\n')

for v in data:
    print(' ', v[1], ',', end='')
    f.write(' {},'.format(v[1]))

print('\n')
f.write('\n\n\n')

for v in data:
    print(' ', v[2], ',', end='')
    f.write(' {},'.format(v[2]))

f.close()
