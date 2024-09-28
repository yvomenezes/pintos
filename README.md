# Run the following command to build the Docker image
```bash 
docker build . -t ubuntu:pintos
```
# Run the following command to create a container 
```bash
docker run -v PINTOS_SRC_PATH:/home/dickers/pintos -it --name ubuntu ubuntu:pintos bash
```



