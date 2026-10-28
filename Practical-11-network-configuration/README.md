# Practical 11 - Configuring Networking

**Index date:** 10-Sep-2026  
**Original PDF sections:** 12  
**Original PDF pages:** 43-44

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Use NetworkManager, nmcli and nmtui to inspect and configure the lab network.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
ip addr
ip link
systemctl status NetworkManager
nmcli connection show
nmcli device status
nmcli device show
# Substitute the connection name and addresses for your lab.
sudo nmcli connection modify "Wired connection 1" ipv4.addresses 192.168.56.20/24
sudo nmcli connection modify "Wired connection 1" ipv4.gateway 192.168.56.1
sudo nmcli connection modify "Wired connection 1" ipv4.dns "8.8.8.8"
sudo nmcli connection modify "Wired connection 1" ipv4.method manual
sudo nmcli connection up "Wired connection 1"
sudo nmtui
hostnamectl
sudo hostnamectl set-hostname rhel-lab
hostnamectl
ping -c 4 8.8.8.8
ping -c 4 redhat.com
```

## Notes

Connection names, addresses, gateway and DNS must match your lab. The PDF uses nmtui for IPv4/IPv6; its detailed nmcli example covers IPv4.
