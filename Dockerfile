# ARG VERSION = 16.04
# Line 1 empty for ARG which used for specify libc version changed by other file
FROM ubuntu:${VERSION}
USER root
RUN ./pwn_setup.sh
