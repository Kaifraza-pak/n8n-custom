FROM node:20-bookworm-slim

RUN apt-get update && apt-get install -y ffmpeg python3 python3-pip curl && \
    pip3 install --break-system-packages edge-tts && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g n8n

EXPOSE 5678
CMD ["n8n"]
