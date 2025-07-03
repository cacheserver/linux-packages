FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/var/lib/linux-repository" ]

ENV DOMAIN=local
