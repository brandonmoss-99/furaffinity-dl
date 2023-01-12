FROM debian:11.6-slim

WORKDIR /furaffinity-dl
COPY ./furaffinity-dl .

# Copy in a cookies file, if it exists (like cookies.txt)
COPY ./cookies.* .

RUN apt-get update
RUN apt-get install -y wget exiftool file
ENTRYPOINT [ "/bin/bash", "/furaffinity-dl/furaffinity-dl" ]
