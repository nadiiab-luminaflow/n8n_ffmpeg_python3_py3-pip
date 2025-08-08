FROM n8nio/n8n:latest

USER root
RUN apk update && apk add --no-cache ffmpeg python3 py3-pip
RUN python3 -m venv /opt/venv && \
    . /opt/venv/bin/activate && \
    pip install -U --pre "yt-dlp[default]"

# Добавляем venv в PATH, чтобы yt-dlp и pip были видны
ENV PATH="/opt/venv/bin:$PATH"

USER node
