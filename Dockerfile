# AlpineLinux with a glibc-2.21 and Oracle Java 8
FROM java

# Java Version and other ENV
ENV PATH=${PATH}:/opt/confd

ADD confd-0.11.0-linux-amd64 /opt/confd/confd
