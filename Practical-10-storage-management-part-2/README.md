# Practical 10 - Managing Storage - Part 2

**Index date:** 03-Sep-2026  
**Original PDF sections:** 11 (second part)  
**Original PDF pages:** 40-42

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Study UUIDs, fstab, logical volumes and swap.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
lsblk -f
sudo blkid /dev/sdb1
sudo vi /etc/fstab
# fstab entry, not a shell command:
# UUID=YOUR-UUID-HERE /mnt/lab xfs defaults 0 0
sudo mount -a
df -h
# LVM example on a disposable partition
sudo pvs
sudo vgs
sudo lvs
sudo pvcreate /dev/sdb1
sudo vgcreate tyitvg /dev/sdb1
sudo lvcreate -L 1G -n tyitlv tyitvg
sudo mkfs.xfs /dev/tyitvg/tyitlv
sudo mkdir /mnt/tyit
sudo mount /dev/tyitvg/tyitlv /mnt/tyit
df -h /mnt/tyit
# Dedicated disposable swap partition
swapon --show
sudo mkswap /dev/sdb2
sudo swapon /dev/sdb2
swapon --show
```

## Notes

Use disposable lab partitions for formatting, LVM and swap. Replace device names and UUIDs with actual lab values. Page 40 is shared with Practical 09. The index mentions labels, but the PDF has no separate label-setting example.
