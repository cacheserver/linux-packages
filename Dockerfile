FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/var/cache/linux-packages" ]
ENV DOMAIN=local
ENV PORT=80
