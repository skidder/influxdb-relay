FROM gliderlabs/alpine

RUN apk add --no-cache ca-certificates
COPY influxdb-relay /influxdb-relay
WORKDIR /
EXPOSE 9096
ENTRYPOINT ["/influxdb-relay"]
