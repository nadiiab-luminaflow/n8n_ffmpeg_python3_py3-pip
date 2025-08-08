FROM n8nio/n8n:latest
USER root
RUN apk update && apk add --no-cache ffmpeg python3 py3-pip
RUN python3 -m pip install -U --pre "yt-dlp[default]"
USER node
