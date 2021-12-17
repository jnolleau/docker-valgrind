# Valgrind installed over a Docker container
In order to eliminate some false positives while testing leaks on Mac OS

1. Install Docker running `install_docker.sh`

2. Copy all your files including the `main.c` into `./to_test`

3. Set the compilation rules into `compile_project.sh`

4. Execute `valgrind.sh`

Feel free to email me critics and ideas to improve functionalities 
