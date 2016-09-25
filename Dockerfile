FROM mrlesmithjr/haproxy:alpine

MAINTAINER Larry Smith Jr. <mrlesmithjr@gmail.com>

# Copy HAProxy Configuration Into Image
COPY config/haproxy.cfg /etc/haproxy/

# Expose Ports
EXPOSE 9090
