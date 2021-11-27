FROM ubuntu:20.04
ARG MANIFEST_TOOL_VERSION=2.0.0-beta.1
ARG TARGETARCH
RUN apt-get update && \
    apt-get install -y curl && \
    curl -sSL https://github.com/estesp/manifest-tool/releases/download/v${MANIFEST_TOOL_VERSION}/binaries-manifest-tool-${MANIFEST_TOOL_VERSION}.tar.gz --output manifest-tool.tar.gz && \
    tar -xzf manifest-tool.tar.gz manifest-tool-linux-${TARGETARCH} && \
    mv mv manifest-tool-linux-${TARGETARCH} /usr/local/bin/manifest-tool && \
    chmod +x /usr/local/bin/manifest-tool && \
    rm -rf manifest-tool.tar.gz