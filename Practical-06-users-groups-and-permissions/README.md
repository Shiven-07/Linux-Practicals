# Practical 06 - Working with Users, Groups and Permissions

**Index date:** 06-Aug-2026  
**Original PDF sections:** 6-7  
**Original PDF pages:** 28-33

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Manage users, groups, permissions, passwords, password aging and superuser access.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
sudo useradd labuser
sudo passwd labuser
sudo groupadd tyitgroup
sudo usermod -aG tyitgroup labuser
id labuser
sudo chage -l labuser
sudo chage -M 90 labuser
sudo chage -m 1 labuser
sudo chage -W 7 labuser
sudo chage -l labuser
su - labuser
# Run exit to return to the previous shell.
exit
sudo -l
sudo whoami
```

## Notes

Permission commands are in Practical 05 and in the attached original pages. Use the account and group names assigned by your lab.
