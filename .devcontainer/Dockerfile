FROM mcr.microsoft.com/devcontainers/rust:1-1-bookworm

ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=$USER_UID
ARG PACKAGES="git wget python3-neovim tmux ripgrep curl exa xsel unzip"

RUN usermod -l $USERNAME vscode && \
    usermod -d /home/$USERNAME -m $USERNAME && \
    chown -R $USERNAME: /home/$USERNAME && \
    apt-get update && \
    apt-get install -y sudo && \
    echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y $PACKAGES && \
    curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz && \
    sudo rm -rf /opt/nvim && \
    sudo tar -C /opt -xzf nvim-linux64.tar.gz && \
    sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/bin/nvim

USER $USERNAME
