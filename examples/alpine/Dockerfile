FROM alpine:latest

RUN sed -i 's#https://dl-cdn.alpinelinux.org#http://dl-cdn.alpinelinux.local#g' /etc/apk/repositories

RUN apk update && apk add --no-cache \
    ca-certificates \
    curl
