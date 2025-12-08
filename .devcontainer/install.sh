#!/usr/bin/env bash
set -e

echo "🔧 Updating APT..."
sudo apt-get update

echo "🔧 Installing wabt, gcc, cmake, python, curl, git..."
sudo apt-get install -y \
  wabt \
  build-essential \
  cmake \
  python3 \
  python3-pip \
  curl \
  git

echo "🔧 Installing Emscripten SDK (emsdk)..."
if [ ! -d /opt/emsdk ]; then
  sudo git clone https://github.com/emscripten-core/emsdk.git /opt/emsdk
fi

sudo chown -R "$(id -u)":"$(id -g)" /opt/emsdk

cd /opt/emsdk
./emsdk install latest
./emsdk activate latest

# Add Emscripten env to future terminals
echo "source /opt/emsdk/emsdk_env.sh" >> ~/.bashrc

echo "🔧 Installing Rust via rustup..."
if ! command -v rustup >/dev/null 2>&1 ; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi

# Ensure Rust is in PATH (for current shell)
if [ -f "$HOME/.cargo/env" ]; then
  source "$HOME/.cargo/env"
fi

echo "🔧 Installing useful Rust WASM targets..."
rustup target add wasm32-unknown-unknown
rustup target add wasm32-wasi || true

echo "🔧 Installing Wasmtime..."
# Prefer official installer so we have a recent version
if ! command -v wasmtime >/dev/null 2>&1 ; then
  curl https://wasmtime.dev/install.sh -sSf | bash
fi

# Add Wasmtime to PATH for current shell and future shells
if [ -d "$HOME/.wasmtime/bin" ]; then
  export PATH="$HOME/.wasmtime/bin:$PATH"
  if ! grep -q '.wasmtime/bin' "$HOME/.bashrc" 2>/dev/null; then
    echo 'export PATH="$HOME/.wasmtime/bin:$PATH"' >> "$HOME/.bashrc"
  fi
fi

echo "🎉 Installation complete!"
