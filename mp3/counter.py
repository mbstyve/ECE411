#!/usr/bin/env python
# This script prints the file with the PC in the comments 
# Usage: ./LC3_line_number.py <file>
# Author: AJ Sutrave
import sys

instructions = ["ADD", "AND", "BR", "JSR", "JSRR", "LDB", "LDI", "LDR", "NOT", "RET", "RTI", "SHF", "STB", "STI", "STR", "TRAP", "LEA", "LSHF", "RSHFL", "RSHFA", "NOP"]
PC = 0 #Change to 2 for PCout value

with open(sys.argv[1], 'r') as f:
    for line in f:
        if line.strip().split(' ')[0] in instructions:
            print line[:-1] + ";\tPC=0x%x" % PC
            PC += 2
        else:
            print line[:-1]
