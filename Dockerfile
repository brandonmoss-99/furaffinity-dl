FROM alpine:3.17.1

# Install packages needed
RUN apk add --no-cache bash wget exiftool file grep tini

# Move over needed files
COPY furaffinity-dl /usr/bin/.
# Copy in a cookies file, if it exists (like cookies.txt)
COPY cookies.* /usr/bin/.

ENTRYPOINT [ "/sbin/tini", "--", "/bin/bash", "/usr/bin/furaffinity-dl" ]
