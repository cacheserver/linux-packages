FROM nginx:stable-alpine
ENV DOMAIN=local
ADD rootfs /
VOLUME [ "/var/cache/linux-packages" ]
