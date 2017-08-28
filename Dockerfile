FROM alpine:3.5
RUN apk --no-cache update && \
    apk --no-cache add curl ca-certificates && \
    rm -rf /var/cache/apk/*
RUN curl -L https://github.com/kubernetes/kops/releases/download/1.7.0/kops-linux-amd64 -o /usr/local/bin/kops \
    && chmod +x /usr/local/bin/kops
ENTRYPOINT ["/usr/local/bin/kops"]
