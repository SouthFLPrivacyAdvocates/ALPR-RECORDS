# Town of Davie (FL) public records - ALPR documents

These PDF documents were obtained from the Town of Davie, Florida in response to a public records request.

## What's in this folder

- `originals/` - PDFs in original form and filenames (no edits)
- `hashes/sha256.txt` - SHA-256 checksums for integrity verification

## How records were obtained

- Public records request submitted to the Town of Davie.

## Date range

- Request submitted: February 6, 2026
- Current files include agreements/MOUs related to ALPR/LPR systems, including records referencing 2022.

## Known gaps / request status

- The request remains open for any additional responsive records not yet produced.

## Verify file integrity (PowerShell)

```powershell
Get-FileHash .\originals\<filename>.pdf -Algorithm SHA256
```
