FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/var/cache/cacheserver/linux-packages" ]
ENV DOMAIN=localhost
ENV PORT=80
