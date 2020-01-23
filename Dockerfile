FROM debian:latest

# install all services with yes option
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y valgrind
RUN apt-get install -y vim
RUN mkdir /etc/nginx/ssl

# download, extract and install phpMyAdmin, create config
RUN mkdir to_test
RUN cd to_test
RUN gcc -Wall -Wextra -Werror -g -D BUFFER_SIZE=32 get_next_line.c get_next_line_utils.c main.c 
RUN valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --log-file=valgrind-out.txt ./a.out
