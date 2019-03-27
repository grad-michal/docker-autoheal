ARG arch=armhf
FROM multiarch/alpine:${arch}-v3.9

RUN apk add --no-cache curl jq

COPY docker-entrypoint /
ENTRYPOINT ["/docker-entrypoint"]

HEALTHCHECK --interval=5s CMD exit 0

CMD ["autoheal"]
