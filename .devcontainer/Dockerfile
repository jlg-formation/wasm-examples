# Image Node prête pour Codespaces (Node + npm + tools)
FROM mcr.microsoft.com/devcontainers/javascript-node:22

# Éviter les questions interactives
ENV DEBIAN_FRONTEND=noninteractive

# Installation de wabt (wat2wasm, wasm2wat, etc.)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      wabt \
      ca-certificates \
      vim \
      curl \
      git \
      build-essential && \
    rm -rf /var/lib/apt/lists/*

# L'image utilise déjà l'utilisateur "vscode"
USER vscode
WORKDIR /workspaces
