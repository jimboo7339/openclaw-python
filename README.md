# OpenClaw Python

基于 [1panel/openclaw](https://hub.docker.com/r/1panel/openclaw) 官方镜像，预装 Python3 和 requests 模块，用于支持百度搜索等 Python 技能。

## 镜像地址

```
docker pull jimboo7339/openclaw-python:latest
```

## 与官方镜像的区别

| 特性 | 官方镜像 | 本镜像 |
|------|---------|--------|
| Node.js | ✅ | ✅ |
| Python3 | ❌ | ✅ |
| requests 模块 | ❌ | ✅ |
| 体积 | ~3.5GB | ~3.52GB |

## 使用方法

### docker-compose.yml

```yaml
services:
  openclaw:
    container_name: openclaw
    image: jimboo7339/openclaw-python:latest
    restart: always
    environment:
      HOME: /home/node
      TERM: xterm-256color
      BAIDU_API_KEY: your-api-key
    volumes:
      - ./:/home/node/.openclaw
    ports:
      - 18789:18789
      - 18790:18790
    init: true
    command: ["node", "dist/index.js", "gateway", "--bind", "lan", "--port", "18789"]
```

### 启动

```bash
docker-compose up -d
```

## 自动构建

本镜像通过 GitHub Actions 自动构建：
- 每小时自动检查基础镜像更新
- 推送 tag 时自动构建
- 支持手动触发构建

## 相关链接

- [OpenClaw 官方文档](https://docs.openclaw.ai)
- [Docker Hub](https://hub.docker.com/r/jimboo7339/openclaw-python)
