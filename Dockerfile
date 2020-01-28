FROM python:3.8.0-alpine

ENV PYTHONDONTWRUTEBITECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

RUN pip install pipenv
COPY Pipfile Pipfile.lock /usr/src/app/
RUN pipenv install --system

COPY . /usr/src/app/