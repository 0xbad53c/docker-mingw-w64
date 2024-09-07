FROM alpine:3.14
RUN apk add --no-cache bash
RUN apk add --no-cache make
RUN apk add --no-cache mingw-w64-gcc
RUN mkdir /app
WORKDIR /app
ENTRYPOINT ["make"]
