# Purpose
I originally created this to make cross-compilation easier on Apple Silicon to make life easier. This container allows you to compile your tools as if it was amd64.

## Example 1: Alpine 64-bit
Lowest size, best for CI/CD.
```
docker run -it --platform linux/amd64 --entrypoint /bin/bash -v "$(pwd)":/app 0xbad53c/mingw-w64:alpine
```

## Example 2: Debian 64-bit
Easier to build on.
```
docker run -it --platform linux/amd64 --entrypoint /bin/bash -v "$(pwd)":/app 0xbad53c/mingw-w64:debian
```

# Example building it yourself
Sometimes using gcc9 is required, hence the gcc9 option
```
docker buildx create --use --name multi-arch-builder
docker buildx build --platform=amd64 -t mingw64-deb-gcc9 -f gcc9.Dockerfile
docker buildx build --platform=amd64 -t mingw64-deb -f Dockerfile
docker buildx build --platform=amd64 -t mingw64-alpine -f Dockerfile
```