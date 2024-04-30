FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    tzdata net-tools iproute2 iputils-ping telnet tcpdump wget curl \
    nmap traceroute ssh iptables ethtool dnsutils netcat-traditional

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*
