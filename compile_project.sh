#!/bin/bash

# Choose compilator
compilator="clang"

# List here all the files you want to compile, separated by space
files_to_test="get_next_line.c get_next_line_utils.c main.c"

# Lhoose the flages for compilation
flags="-Wall -Wextra -Werror -g -D BUFFER_SIZE=32"

# Choose the commande to execute your binary, with the aruguments if needed
exec="./a.out lorem"


# Compilation and valgrind test
cd /test
$compilator $flags $files_to_test 
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes $exec

# Uncomment if you need to launch bash inside docker:
# /bin/bash