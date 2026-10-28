# Source and coverage notes

The original PDF and index document are in Sources/. They are unchanged copies of the files supplied by the user.

The college index has 13 entries; the PDF has 18 separately numbered sections. Repository folders follow the index. Each guide lists the original PDF section numbers and physical page positions. catalog.json records the same mapping.

All 53 original pages are represented. Screenshots, layout and content are preserved in the split PDFs. Some pages are deliberately repeated where index topics overlap; page 40 is shared by both storage practicals. Extracted text does not include screenshot contents, so use source.pdf for those.

## Scope

The command references and navigation were prepared for this repository. No Linux administration commands were executed while preparing it. The examples are not claimed to be tested on a live RHEL system.

The index is broader than the PDF in some areas. A dedicated multi-user-target exercise, extended-attribute operations, disk-label operations, full interactive partition create/delete sequences, and complete autofs maps are not supplied. These gaps are identified rather than presented as completed source examples.

students.txt, the two shell scripts, index.html and tyit.conf are editable transcriptions of their original examples. Commands include separate exercises, placeholders and interactive steps; do not execute a whole command-reference block as a script.
