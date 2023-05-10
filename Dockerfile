FROM python:3.8-alpine

RUN apk update
RUN pip install --no-cache-dir flask
RUN pip install --no-cache-dir marshmallow

WORKDIR .
COPY app ./app

ENV FLASK_APP ./app/index.py

CMD python -m flask run

EXPOSE 5000