# Practical 02 - Basic System Commands

**Index date:** 09-Jul-2026  
**Original PDF sections:** 2-3  
**Original PDF pages:** 19-23

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Use basic system commands, redirection, pipes, grep and regular expressions.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
pwd
ls -la
date
whoami
who
uname -a
hostname
echo "Linux Practical" > practical.txt
echo "TYIT RHEL Practical" >> practical.txt
cat practical.txt
ls /wrong-directory 2> error.txt
cat error.txt
ls -l | less
ps aux | grep ssh
```

## Notes

For switching users, also see Practical 06. The PDF does not provide a dedicated multi-user-target exercise.
