FROM node:20-bookworm-slim

RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*
RUN npm install -g n8n

EXPOSE 5678
CMD ["n8n"]
