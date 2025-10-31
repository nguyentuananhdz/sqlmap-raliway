FROM python:3.11-slim

# Cài git + thư viện cần thiết
RUN apt-get update && apt-get install -y git build-essential libssl-dev libffi-dev && rm -rf /var/lib/apt/lists/*

# Clone sqlmap
RUN git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git /opt/sqlmap

# Copy file start.sh
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

WORKDIR /opt/sqlmap
EXPOSE 8775

CMD ["/app/start.sh"]
