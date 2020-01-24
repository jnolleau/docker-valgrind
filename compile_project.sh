#!/bin/bash

# Set "yes" if you are using makefile, "no" if not
makefile="no"

# Choose the commande to execute your binary, with the aruguments if needed
exec="./a.out lorem"


# ============================================================
# In case not using Makefile ("makefile="no"")
# ============================================================

# Choose compilator
compilator="gcc"

# List here all the files you want to compile, separated by space
files_to_test="get_next_line.c get_next_line_utils.c main.c"

# Lhoose the flages for compilation
flags="-Wall -Wextra -Werror -D BUFFER_SIZE=32"

# ============================================================



# Go into test folder in container
cd /test

# Run compilation
if [ $makefile = "yes" ]
then
make 
else
$compilator -g $flags $files_to_test 
fi

# Run valgrind test
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes $exec

# Uncomment if you need to launch bash inside docker:
# /bin/bash