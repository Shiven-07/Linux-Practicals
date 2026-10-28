# Practical 09 - Managing Storage - Part 1

**Index date:** 27-Aug-2026  
**Original PDF sections:** 11 (first part)  
**Original PDF pages:** 38-40

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Identify disks, inspect MBR/GPT, create partitions/file systems and mount them.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
# Identify the disposable lab disk first.
lsblk
lsblk -f
sudo fdisk -l
sudo fdisk -l /dev/sdb
sudo parted /dev/sdb print
# Interactive partition editor
sudo fdisk /dev/sdb
# Alternative file systems: choose one for the required exercise.
sudo mkfs.xfs /dev/sdb1
sudo mkfs.ext4 /dev/sdb1
sudo mkfs.vfat /dev/sdb1
# Mount and unmount
sudo mkdir /mnt/lab
sudo mount /dev/sdb1 /mnt/lab
df -h /mnt/lab
sudo umount /mnt/lab
```

## Notes

The source requires an additional disposable virtual disk. Verify the disk before partitioning or formatting. /dev/sdb is an example; XFS, ext4 and VFAT are alternatives. The PDF does not give complete fdisk menu steps for creation/deletion.
