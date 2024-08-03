
FROM rust:1.63 as builder
WORKDIR /usr/src/ImageMapper
COPY ImageMapper .
RUN cargo install --locked --path .

FROM debian:bookworm-slim
COPY --from=builder /usr/local/cargo/bin/image_mapper /usr/local/bin/image_mapper
CMD ["image_mapper"]
