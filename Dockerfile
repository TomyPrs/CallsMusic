FROM python:3.9

WORKDIR /app/
RUN apt update && apt upgrade -y
RUN apt install git curl ffmpeg -y
COPY . .
RUN pip install -r requirements.txt
CMD python3 main.py