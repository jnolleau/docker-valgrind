FROM debian:latest

# install all services with yes option
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install build-essential -y
RUN apt-get install -y valgrind
RUN apt-get install -y clang
# RUN apt-get install manpages-dev
# RUN apt-get install -y vim

# Prepare test environment
COPY /compile_project.sh /usr/local/bin

# executes cmds in the container
ENTRYPOINT ["compile_project.sh"]


# FROM alpine:latest

# # install all services with yes option
# RUN apk update
# RUN apk add build-base
# RUN apk add valgrind
# RUN apk add clang

# # Prepare test environment
# COPY /compile_project.sh /usr/local/bin
# RUN chmod +x /usr/local/bin/compile_project.sh

# executes cmds in the container
# ENTRYPOINT /usr/local/bin/compile_project.sh;
