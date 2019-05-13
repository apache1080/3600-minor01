#!/bin/sed -f
#1. Preprocessing
s/[()]//g
s/[' ']//g
s/[-]//g
#2. Transposition
s/(.)(.)(.)(.)(.)(.)(.)(.)(.)/\1\2\8\4\5\6\7\3\9/
#3. Substitution
y/0123456789/zYxWvUtSqP/
#4. Append extra data
3 a ZachFriedm
