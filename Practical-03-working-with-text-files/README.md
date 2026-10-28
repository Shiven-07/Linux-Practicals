# Practical 03 - Working with Text Files

**Index date:** 16-Jul-2026  
**Original PDF sections:** 3  
**Original PDF pages:** 21-23

[Original pages and screenshots](source.pdf) · [Full source text](source-text.txt) · [All practicals](../README.md)

## Aim

Read, select, sort, count and filter text records.

## Command reference

Selected commands from the supplied source. Read source.pdf for the procedure and expected output. These are separate examples and interactive steps, not one script to execute from beginning to end.

```bash
cat students.txt
head students.txt
tail students.txt
less students.txt
cut -d' ' -f1 students.txt
sort students.txt
wc students.txt
grep TYIT students.txt
grep -i tyit students.txt
grep -n TYIT students.txt
grep '^A' students.txt
grep '5$' students.txt
grep -E '[0-9]{3}' students.txt
awk '{print $1,$3}' students.txt
```

## Notes

students.txt is transcribed from PDF page 21. Press q to leave less. Output examples and screenshots are in source.pdf.

## Editable examples

[students.txt](students.txt)
