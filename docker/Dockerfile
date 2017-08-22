FROM debian:stretch

ADD sources.list /etc/apt/sources.list

RUN apt-get update -y && apt-get install -y \
sudo devscripts build-essential fakeroot quilt vim

RUN \
addgroup builder --gid 1000 && \
adduser builder --uid 1000 --gid 1000 --disabled-password --gecos ''

ADD sudoers-builder /etc/sudoers.d/builder

USER builder
WORKDIR /home/builder

CMD /bin/bash
