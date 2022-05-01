FROM python:3.8-alpine as base

RUN apk update && apk add postgresql-dev bash gcc musl-dev
RUN pip install --upgrade pip

WORKDIR /code
COPY . /code

RUN pip install -r requirements-dev.txt
EXPOSE 5000
ENV FLASK_APP wsgi.py
