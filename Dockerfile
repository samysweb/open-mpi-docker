FROM ubuntu:latest

RUN apt-get update && apt-get install -y build-essential openmpi-bin mpi-default-dev && apt-get clean
RUN mkdir -p /home/project

COPY ./ /home/project

WORKDIR /home/project

ENTRYPOINT [ "bash" ]