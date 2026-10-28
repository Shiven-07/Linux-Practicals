# Practical 07 - Managing Software

**Index date:** 13-Aug-2026  
**Original PDF sections:** 8  
**Original PDF pages:** 34

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Manage software using DNF/YUM, RPM and local package files.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
# Inspect repositories and packages
sudo dnf repolist
dnf search httpd
dnf info httpd
yum repolist
yum search httpd
rpm -q bash
rpm -qi bash
rpm -ql bash
rpm -V bash
# Separate installation, update and removal examples
sudo dnf install httpd
sudo dnf update
sudo dnf remove httpd
sudo yum install httpd
sudo dnf install ./package-name.rpm
```

## Notes

Install, update and removal are separate examples. Replace package-name.rpm with an existing local package. Repository availability depends on your lab installation.
