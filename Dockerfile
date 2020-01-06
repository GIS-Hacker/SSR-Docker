FROM alpine

ARG SSR_URL=https://github.com/winterssy/shadowsocksr/archive/manyuser.zip

RUN set -ex && \
    apk add --no-cache libsodium py-pip && \
    pip --no-cache-dir install $SSR_URL

WORKDIR /app

COPY app/ .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]

CMD ["ssserver", "-c", "config.json"]
