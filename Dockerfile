FROM python:3.11.4-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && \
    pip install --upgrade pip 


COPY requirements.txt /app/requirements.txt

RUN pip install gunicorn

RUN pip install -r requirements.txt

COPY . /app
