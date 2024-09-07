FROM debian:latest
RUN apt update
RUN apt install -y make
RUN apt install -y mingw-w64
RUN apt install -y zip
RUN apt install -y xxd
RUN apt install -y nasm
RUN apt install -y python3 python3-pip
RUN mkdir /app
WORKDIR /app
ENTRYPOINT ["make"]
