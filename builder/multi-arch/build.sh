# 多架构版本
docker buildx create --name builder --use

docker buildx build --platform linux/arm64,linux/amd64 --push -t chinalan/builder:0.3-alpine3.12.1 .
