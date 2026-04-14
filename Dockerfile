FROM ubuntu:22.04

WORKDIR /app

COPY . .

RUN chmod +x jiotv_go-linux-amd64 start.sh

ENV PORT=8080

CMD ["./start.sh"]