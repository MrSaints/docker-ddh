FROM rust:1.42.0 as builder

WORKDIR /ddh/
RUN cargo install --git https://github.com/darakian/ddh ddh


FROM debian:10.3-slim

LABEL org.label-schema.vcs-url="https://github.com/mrsaints/docker-ddh" \
      maintainer="Ian L. <os@fyianlai.com>"

COPY --from=builder /usr/local/cargo/bin/ddh /usr/local/bin/ddh

WORKDIR /target/

CMD ["ddh"]
