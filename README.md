# OpenClaw Python

基于 [ghcr.io/openclaw/openclaw](https://github.com/openclaw/openclaw/pkgs/container/openclaw/versions) 官方镜像，预装 Python3 和 requests 模块，用于支持 Python 技能。

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


## 自动构建

本镜像通过 GitHub Actions 自动构建：
- 每小时自动检查基础镜像更新
- 推送 tag 时自动构建
- 支持手动触发构建

## 相关链接

- [OpenClaw 官方文档](https://docs.openclaw.ai)
- [Docker Hub](https://hub.docker.com/r/jimboo7339/openclaw-python)
