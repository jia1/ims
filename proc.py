import sys

args = sys.argsv

if len(args) != 2:
    exit('Usage: python proc.py result_file')

processed_lines = []

with open(result_file, 'r') as f:
    for line in f:
        split_line = line.split(' ')
        split_line[0] = split_line[1].split('.')[0]
        processed_lines.append(' '.join(split_line))

with open(result_file, 'w') as g:
    g.writelines(processed_lines)
