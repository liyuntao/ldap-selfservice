FROM tiredofit/self-service-password:latest

RUN mkdir -p /www/ssp && git clone https://github.com/ltb-project/self-service-password /www/ssp && chown nginx:www-data /www/ssp

ENV APC_SHM_SIZE 128M
ENV OPCACHE_MEM_SIZE 128
ENV PHP_MEMORY_LIMIT 128M
ENV UPLOAD_MAX_SIZE 128
ENV VIRTUAL_NETWORK nginx-proxy
ENV VIRTUAL_PORT 80
ENV TZ Asia/Shanghai

