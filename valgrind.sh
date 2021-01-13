#!/bin/bash
cp ../ft_containers/List.ipp to_test/
cp ../ft_containers/List.hpp to_test/
cp ../ft_containers/main.cpp to_test/



# Generate a new image in .
docker build -t valgrind_test . \

# Create a container with a Dockerfile
#	Need to build a new image before
docker run --name leak_test --rm -ti \
	-v $(pwd)/to_test:/test valgrind_test