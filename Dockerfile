
FROM python:latest

WORKDIR /app


RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y

COPY . .

RUN pip3 install -r requirements.txt


CMD python3 bot.py
