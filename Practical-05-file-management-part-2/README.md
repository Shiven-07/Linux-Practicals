# Practical 05 - Essential File Management Tools - Part 2

**Index date:** 30-Jul-2026  
**Original PDF sections:** 5-6  
**Original PDF pages:** 25-30

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Study links, archives, compression, ownership, permissions, ACLs, umask and set-GID.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
# Links and archives
echo "TYIT Linux" > original.txt
ln original.txt hardlink.txt
ls -li original.txt hardlink.txt
ln -s original.txt softlink.txt
tar -cvf tyit.tar original.txt hardlink.txt
tar -tvf tyit.tar
mkdir extracted
tar -xvf tyit.tar -C extracted
# Separate compression examples from the source
gzip original.txt
gunzip original.txt.gz
bzip2 original.txt
bunzip2 original.txt.bz2
star -c -f=tyit.star original.txt
star -t -f=tyit.star
# Permissions
touch permission.txt
chmod 755 permission.txt
ls -l permission.txt
sudo chown root:root permission.txt
umask
umask 027
touch umaskfile
ls -l umaskfile
# set-GID and ACL examples
sudo groupadd project
sudo mkdir /project
sudo chgrp project /project
sudo chmod 2775 /project
ls -ld /project
getfacl permission.txt
sudo setfacl -m u:student:rw permission.txt
getfacl permission.txt
sudo setfacl -x u:student permission.txt
```

## Notes

These are separate exercises. The source places compression after hard-link creation; a compression tool may refuse a multiply-linked file, so use a separate practice file for that exercise. The ACL example needs an existing student account. Extended attributes appear in the index but do not have a dedicated exercise in the PDF.
