FROM ubuntu:22.04

WORKDIR /app

RUN apt update && apt install -y wget

RUN wget https://github.com/JioTV-Go/jiotv_go/releases/latest/download/jiotv_go-linux-amd64

RUN chmod +x jiotv_go-linux-amd64

COPY start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]