FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Éviter les questions interactives
ENV DEBIAN_FRONTEND=noninteractive

# Mise à jour et installation de wabt (wat2wasm)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      wabt \
      ca-certificates \
      git \
      build-essential \
      curl \
      vim && \
    rm -rf /var/lib/apt/lists/*

# Utilisateur devcontainers standard
USER vscode
WORKDIR /workspaces
