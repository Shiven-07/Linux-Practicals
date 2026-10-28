# Practical 13 - Network Storage, Shell Scripting and Scheduling

**Index date:** 24-Sep-2026  
**Original PDF sections:** 16-18  
**Original PDF pages:** 50-53

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Study NFS/CIFS, automount, shell scripts, cron and at.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
# Substitute the server/share/user values for your lab.
sudo dnf install nfs-utils
showmount -e SERVER_IP
sudo mkdir /mnt/nfs
sudo mount SERVER_IP:/shared /mnt/nfs
df -h /mnt/nfs
# fstab entry, not a shell command:
# SERVER_IP:/shared /mnt/nfs nfs defaults,_netdev 0 0
sudo mount -a
sudo dnf install cifs-utils
sudo mkdir /mnt/cifs
sudo mount -t cifs //SERVER_IP/share /mnt/cifs -o username=USER
sudo dnf install autofs
sudo systemctl enable --now autofs
# The included scripts
chmod +x systeminfo.sh process_monitor.sh
./systeminfo.sh
./process_monitor.sh
# Scheduling
systemctl status crond
crontab -e
# Entry for crontab; replace /home/student with your home path:
# */5 * * * * date >> /home/student/cron-output.txt
crontab -l
sudo dnf install at
sudo systemctl enable --now atd
echo "date >> /home/student/at-output.txt" | at 23:00
atq
atrm JOB_NUMBER
```

## Notes

Replace SERVER_IP, USER, JOB_NUMBER and /home/student. The source installs/enables autofs but does not provide complete mount maps. The scripts are transcribed from pages 51-52; they have not been executed here.

## Editable examples

[systeminfo.sh](systeminfo.sh) · [process_monitor.sh](process_monitor.sh)
