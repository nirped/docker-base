# AlpineLinux with a glibc-2.21 and Oracle Java 8
FROM java

# Java Version and other ENV
ENV PATH=${PATH}:/opt/confd

RUN apk update && apk add curl
RUN mkdir -p /opt/confd

RUN mkdir -p /opt/confd && \
    curl -L -o /opt/confd/confd https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 && \
    chmod 0755 /opt/confd/confd
 
