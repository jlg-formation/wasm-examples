#!/usr/bin/env bash
set -e

echo "🔧 Updating APT..."
sudo apt-get update

echo "🔧 Installing wabt, gcc, cmake, python..."
sudo apt-get install -y \
  wabt \
  build-essential \
  cmake \
  python3 \
  python3-pip

echo "🔧 Installing Emscripten SDK (emsdk)..."
if [ ! -d /opt/emsdk ]; then
  sudo git clone https://github.com/emscripten-core/emsdk.git /opt/emsdk
fi

sudo chown -R "$(id -u)":"$(id -g)" /opt/emsdk

cd /opt/emsdk
./emsdk install latest
./emsdk activate latest

echo "source /opt/emsdk/emsdk_env.sh" >> ~/.bashrc

echo "✅ Installation complete."
