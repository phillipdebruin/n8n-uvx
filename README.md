# n8n-UVX (MCP-enabled)

A Dockerized version of [n8n](https://n8n.io) with integrated [UV](https://github.com/astral-sh/uv) / UVX support for running MCP (Model Context Protocol) servers inside your automation workflows.

This repository includes:
- **Custom Dockerfile** extending the official `n8nio/n8n` image with Astral UV/UVX.
- **GitHub Actions workflow** for manual builds and publishing to GitHub Container Registry (GHCR).
- Optional **MCP client node** installation for n8n.

---

## Features

- **Full n8n functionality** with persistent data storage.
- **UV/UVX** pre-installed for running MCP servers (HTTP Streamable or STDIO).
- **Manual GitHub Action trigger** for build & push, no auto-builds on commit unless you want them.
- **Multi-arch** support (`amd64` + `arm64`).

---

## Getting Started

### 1. Clone the repo
```bash
git clone https://github.com/<your-username>/n8n-uvx.git
cd n8n-uvx