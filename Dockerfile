FROM python:rc-alpine

WORKDIR /opt

COPY ./main.py /opt
COPY config.json /opt
COPY data.json /opt

RUN apk add --no-cache libssl-dev build-base

RUN pip install python-telegram-bot --upgrade

CMD ["python3", "main.py"]
