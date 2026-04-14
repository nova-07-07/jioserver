FROM ubuntu:22.04

WORKDIR /app

# Install required packages
RUN apt update && apt install -y wget ca-certificates && rm -rf /var/lib/apt/lists/*

# Download latest JioTV_go binary
RUN wget -O jiotv_go https://github.com/JioTV-Go/jiotv_go/releases/latest/download/jiotv_go-linux-amd64

# Give execute permission
RUN chmod +x jiotv_go

# Copy start script
COPY start.sh .

RUN chmod +x start.sh

# Expose port
EXPOSE 5001

# Start app
CMD ["./start.sh"]