FROM python:3.7-alpine
MAINTAINER Stanislav Radomskiy

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
RUN mkdir /test
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
