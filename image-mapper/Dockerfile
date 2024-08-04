
FROM rust:1.63 as builder
WORKDIR /usr/src
RUN git clone https://github.com/osklunds/ImageMapper.git
WORKDIR /usr/src/ImageMapper
RUN git checkout e3573a8a7b3fbc16ca61b24c4423a3bf316589b6
RUN cargo install --locked --path .

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y procps
COPY --from=builder /usr/local/cargo/bin/image_mapper /usr/local/bin/image_mapper
COPY run.sh .
CMD ["./run.sh"]
