# PowerShell-Compare-Filehash
A function to compare File-Hashes with another File or a Hash

Load this function directly into your powershell:
```
irm https://raw.githubusercontent.com/AveGamers/PowerShell-Compare-Filehash/refs/heads/main/compare-filehash.ps1 | iex
```
## Syntax:
Correct Syntax => compare-filehash <File> <Hash or File2> <Type: Files, Hash>

Example: compare-filehash C:\temp\file1.txt C:\temp\file2.txt Files

Example: compare-filehash C:\temp\file1.txt 1234567890abcdef1234567890abcdef Hash