FROM mcr.microsoft.com/devcontainers/base:ubuntu26.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends python3.14 \
    && ln -s /usr/bin/python3.14 /usr/local/bin/python \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" \
    && unzip /tmp/awscliv2.zip -d /tmp \
    && /tmp/aws/install \
    && rm -rf /tmp/aws /tmp/awscliv2.zip

USER vscode

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/home/vscode/.local/bin:${PATH}"

WORKDIR /workspaces