FROM debian:latest

WORKDIR /app/
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN pip3 install -r requirements.txt
COPY . .
CMD python3 main.py