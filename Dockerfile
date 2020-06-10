FROM python:3.8
MAINTAINER soheil06791

ENV PYTHONUNBUFFERED 1

COPY ./reguirements.txt /reguirements.txt

RUN pip install -r /reguirements.txt

RUN mkdir /app

WORKDIR /app

COPY ./mysite /app

RUN adduser -D user
USER user
