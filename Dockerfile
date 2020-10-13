FROM ubuntu:latest

RUN ( apt-get update && \
      apt-get install lbzip2 pigz && \
      cd /usr/local/bin && \
      ln -s /usr/bin/lbzip2 bzip2 && \
      ln -s /usr/bin/lbzip2 bunzip2 && \
      ln -s /usr/bin/lbzip2 bzcat && \
      ln -s /usr/bin/pigz gzip && \
      ln -s /usr/bin/pigz gunzip && \
      ln -s /usr/bin/pigz gzcat && \
      ln -s /usr/bin/pigz zcat && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/* )
