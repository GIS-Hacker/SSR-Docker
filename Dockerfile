FROM alpine:3.6

WORKDIR /ssr

COPY ./etc/shadowsocks.json .

ENV SSR_URL https://github.com/winterssy/shadowsocksr/archive/manyuser.zip

RUN set -ex && \
    apk --update add --no-cache libsodium py-pip && \
    pip --no-cache-dir install $SSR_URL

CMD ["ssserver", "-c", "shadowsocks.json"]