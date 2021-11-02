FROM ubuntu:20.04
ARG MANIFEST_TOOL_VERSION=v1.0.3
ARG TARGETARCH=amd64
RUN apt-get update && \
    apt-get install -y curl \
    curl -L https://github.com/estesp/manifest-tool/releases/download/${MANIFEST_TOOL_VERSION}/manifest-tool-linux-${TARGETARCH} --output manifest-tool && \
    chmod +x manifest-tool && \
    mv manifest-tool /usr/local/bin/