FROM simonkowallik/httpbin-alpine

# output visit log
ENV GUNICORN_CMD_ARGS --capture-output --error-logfile - --access-logfile - --access-logformat \'%(h)s %(t)s %(r)s %(s)s Host: %({Host}i)s}\'

# curl
RUN apk --no-cache add curl

# timezone
RUN apk add --no-cache tzdata
ENV TZ Asia/Shanghai
