FROM ubuntu:latest

RUN ( apt-get update && \
      apt-get install lbzip2 && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/* )
