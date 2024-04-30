# 基于 Kali Linux 官方镜像
FROM kalilinux/kali-rolling

# 避免在安装过程中出现交互式提示
ENV DEBIAN_FRONTEND=noninteractive

# 更新软件包列表并安装 kali-linux-headless
RUN apt update && \
    apt -y install kali-linux-headless

# 清理
RUN apt clean && \
    rm -rf /var/lib/apt/lists/*
