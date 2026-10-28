# Practical 12 - SSH, Web Server and Firewall

**Index date:** 17-Sep-2026  
**Original PDF sections:** 13-15  
**Original PDF pages:** 45-49

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Study SSH, key-based login, Apache, virtual hosts and firewalld.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
# SSH server
sudo dnf install openssh-server
sudo systemctl enable --now sshd
systemctl status sshd
ip addr
# Client-side examples; substitute your server address and user.
ssh labuser@192.168.56.20
ssh-keygen -t ed25519
ssh-copy-id labuser@192.168.56.20
ssh labuser@192.168.56.20
# Apache
sudo dnf install httpd
sudo systemctl enable --now httpd
systemctl status httpd
sudo vi /var/www/html/index.html
curl http://localhost
sudo vi /etc/httpd/conf.d/tyit.conf
sudo mkdir -p /var/www/tyit
echo "TYIT Virtual Host" | sudo tee /var/www/tyit/index.html
sudo httpd -t
sudo systemctl restart httpd
# Firewall examples
sudo systemctl status firewalld
sudo systemctl enable --now firewalld
sudo firewall-cmd --get-active-zones
sudo firewall-cmd --list-services
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
sudo firewall-cmd --list-services
# Separate removal exercise
sudo firewall-cmd --permanent --remove-service=http
sudo firewall-cmd --reload
sudo iptables -L
```

## Notes

Generate/copy SSH public keys on the client; keep the private key there. The editable Apache examples below are copied from pages 46-47 and are not installed automatically.

## Editable examples

[index.html](index.html) · [tyit.conf](tyit.conf)
