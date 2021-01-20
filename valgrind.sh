#!/bin/bash



# # List sources
# cp ../ft_containers/list/list.ipp to_test/
# cp ../ft_containers/list/*.hpp to_test/
# cp ../ft_containers/list/main.cpp to_test/

# # Vector sources
cp ../ft_containers/vector/*.hpp to_test/
cp ../ft_containers/vector/main.cpp to_test/




# Generate a new image in .
docker build -t valgrind_test . \

# Create a container with a Dockerfile
#	Need to build a new image before
docker run --name leak_test --rm -ti \
	-v $(pwd)/to_test:/test valgrind_test