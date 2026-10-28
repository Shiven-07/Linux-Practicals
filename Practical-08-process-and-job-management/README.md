# Practical 08 - Managing Processes

**Index date:** 20-Aug-2026  
**Original PDF sections:** 9-10  
**Original PDF pages:** 35-37

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Inspect processes, CPU/memory use, tuned profiles, and foreground/background jobs.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
ps
ps aux
ps -ef
ps aux | grep ssh
pstree
ps --forest
top
# Press q to leave top.
ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head
ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head
systemctl status tuned
tuned-adm list
tuned-adm active
# Interactive shell job example
sleep 300
# Press Ctrl+Z, then enter:
bg
jobs
fg
# Separate background-job example
sleep 300 &
jobs
kill %1
# Replace PID with your own practice process ID.
pgrep sleep
kill PID
# Only if ordinary termination fails:
kill -9 PID
```

## Notes

Use an interactive shell for job control. PID and job numbers must identify your own practice process. Press q to exit top.
