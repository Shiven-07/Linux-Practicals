# Practical 04 - Essential File Management Tools - Part 1

**Index date:** 23-Jul-2026  
**Original PDF sections:** 4-5  
**Original PDF pages:** 24-27

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Create, copy, move and remove files and directories; study links and archives.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
mkdir tyit_lab
cd tyit_lab
touch file1.txt file2.txt file3.txt
ls -l
cp file1.txt file1_backup.txt
mv file2.txt renamed.txt
mkdir documents
cp -r documents documents_backup
rm file3.txt
rm -r documents_backup
```

## Notes

The attached pages also include links and archives; their command reference is in Practical 05.
