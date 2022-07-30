FROM node:latest as builder
WORKDIR /app
COPY . .
RUN echo "Wow hello"

# # -- Stage 2 -- #
# # Create the final environment with the compiled binary.
# FROM alpine
# # Install any required dependencies.
# RUN apk --no-cache add ca-certificates
# WORKDIR /root/
# # Copy the binary from the builder stage and set it as the default command.
# COPY --from=builder /app/bin/hello /usr/local/bin/
# CMD ["hello"]
