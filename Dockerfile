FROM registry.access.redhat.com/ubi8/python-39:latest

USER root

COPY .travis /tmp

COPY requirements.txt requirements.txt

RUN ls -lh /tmp

RUN pip --cache-dir /tmp install -r requirements.txt