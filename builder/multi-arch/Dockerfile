FROM alpine:3.12.1

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk --no-cache --update add curl

# 目前 apk 无法安装 arm 版本的 upx
COPY ./upx /opt/upx
RUN ARCH="" && dpkgArch="$(arch)" \
    && case "${dpkgArch}" in \
    x86_64) ARCH='amd64' ;; \
    aarch64) ARCH='arm64' ;; \
    *) echo "unsupported architecture"; exit 1 ;; \
    esac  \
    && cp /opt/upx/upx-${ARCH} /usr/bin/upx \
    && rm -rf /opt/upx/