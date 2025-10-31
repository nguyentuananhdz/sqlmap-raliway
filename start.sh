#!/usr/bin/env bash
set -e

echo "🚀 Đang khởi chạy SQLMAP API trên Railway..."
cd /opt/sqlmap

# Chạy API server (port 8775)
python3 sqlmapapi.py -s -H 0.0.0.0 -p 8775
