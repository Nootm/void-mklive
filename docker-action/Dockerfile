FROM ghcr.io/void-linux/void-linux:latest-full-x86_64-musl

COPY build.sh /build.sh

RUN chmod +x /build.sh

ENTRYPOINT ["/build.sh"]
