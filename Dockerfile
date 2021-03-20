FROM thekai/tgvcbot:latest

RUN apt update && apt upgrade -y
WORKDIR /app/
COPY . .
RUN pip3 install -r requirements.txt
CMD python3 main.py