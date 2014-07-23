# VERSION   0.1
FROM        paultag/uwsgi:latest
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install -y \
    python3.4 python3-pip \
    git \
    uwsgi-plugin-python3

RUN mkdir -p /opt/hylang.org/
ADD . /opt/hylang.org/gethy.org/
RUN python3.4 /usr/bin/pip3 install -r /opt/hylang.org/gethy.org/requirements.txt

WORKDIR /opt/hylang.org/gethy.org/
