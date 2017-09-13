# ansible-lint
#
# This image is for lint testing ansible in Jenkins

FROM python:2-alpine
MAINTAINER Joe Julian <me@joejulian.name>

RUN apk add --no-cache ansible binutils gcc libc-dev libffi-dev libtool make openssl-dev py-asn1 py-cffi py-cparser py-crypto py-cryptography py-enum34 py-idna py-ipaddress py-jinja2 py-markupsafe py-paramiko py-six py-yaml \
    && pip2 install ansible-lint \
    && apk del binutils gcc libc-dev libffi-dev libtool make
