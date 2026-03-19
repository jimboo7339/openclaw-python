# OpenClaw with Python Support
# Based on 1panel/openclaw:latest with python3-requests installed

FROM ghcr.io/openclaw/openclaw:latest

# 切换到 root 用户以确保有权限安装包
USER root

# 安装 Python requests 模块和 ffmpeg
RUN apt-get update && apt-get install -y python3-requests ffmpeg && rm -rf /var/lib/apt/lists/*

USER node

# 保持原镜像的入口点
# ENTRYPOINT ["node", "dist/index.js"]
