FROM debian:latest

# install all services with yes option
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install build-essential -y
RUN apt-get install manpages-dev
RUN apt-get install -y valgrind
RUN apt-get install -y vim

# Prepare test environment
COPY /compile_project.sh /usr/local/bin

# executes cmds in the container
ENTRYPOINT ["compile_project.sh"]