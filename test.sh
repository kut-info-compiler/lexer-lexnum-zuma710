#!/bin/bash

while read instr outstr
do
    echo $instr | java Lexer > test.out
    echo $instr `cat test.out` $outstr
    echo $outstr | diff - test.out
done < test.in
