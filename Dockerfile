FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/var/lib/linux-cache" ]

ENV DOMAIN=local
