# OpenClaw with Python Support
# Based on 1panel/openclaw:latest with python3-requests installed

FROM 1panel/openclaw:latest

# 使用国内镜像源加速apt下载
RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y python3-requests && \
    rm -rf /var/lib/apt/lists/*

# 保持原镜像的入口点
ENTRYPOINT ["node", "dist/index.js"]
