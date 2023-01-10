FROM debian:11.6-slim

WORKDIR /furaffinity-dl
COPY ./furaffinity-dl .

ENTRYPOINT [ "./furaffinity-dl" ]
