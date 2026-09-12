#!/usr/bin/env bash
# Installs the system packages this setup depends on.
# Editor tooling (language servers, formatters, the tree-sitter CLI) is not
# installed here: Neovim's Mason fetches it on first launch.
set -euo pipefail

NVIM_VERSION="stable"

# update ubuntu
sudo apt update && sudo apt upgrade -y

# install the basic tools
sudo apt install -y build-essential cmake python3 python3-pip python3-venv \
  git unzip wget software-properties-common curl ripgrep xclip

# clang-format is used by conform to format C and C++
sudo apt install -y clang-format

# nodejs is required by GitHub Copilot
sudo apt install -y nodejs npm

# install tmux
sudo apt install -y tmux

# Install Neovim from the official release. The version in apt is far too old:
# this configuration needs 0.12 or newer, because nvim-treesitter's main branch
# depends on APIs introduced in that release.
curl -fsSL -o /tmp/nvim.appimage \
  "https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/nvim-linux-x86_64.appimage"
chmod +x /tmp/nvim.appimage
sudo mv /tmp/nvim.appimage /usr/local/bin/nvim

nvim --version | head -1
