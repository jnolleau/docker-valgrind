#!/bin/bash

file_to_test="get_next_line.c get_next_line_utils.c main.c"
tags="-Wall -Wextra -Werror -g -D BUFFER_SIZE=32"
exec="./a.out lorem"

cd /to_test
gcc $tags $file_to_test 
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --log-file=valgrind-out.txt $exec
cat valgrind-out.txt
/bin/bash