FROM n8nio/n8n:latest

USER root
# Install dependencies
RUN apk add --no-cache curl git build-base bash util-linux coreutils \
    && curl -Ls https://astral.sh/uv/install.sh | bash \
    && cp /root/.local/bin/uv /usr/local/bin/uv \
    && cp /root/.local/bin/uvx /usr/local/bin/uvx \
    && chmod a+rx /usr/local/bin/uv /usr/local/bin/uvx \
    && mkdir -p /data/mcp \
    && chown -R node:node /data/mcp

ENV PATH="/usr/local/bin:/root/.local/bin:${PATH}"
USER node

# (Optional) Install MCP client node for n8n
RUN npm install --global n8n-nodes-mcp-client

WORKDIR /home/node/.n8n
CMD ["n8n"]