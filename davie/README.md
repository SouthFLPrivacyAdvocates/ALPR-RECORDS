# Town of Davie (FL) public records - ALPR documents

These documents were obtained from the Town of Davie.

## What's in this folder

- `originals/` - PDFs in original form and filenames (no edits)
- `originals/hashes/sha256.txt` - SHA-256 checksums for integrity verification
- `ocr/` - PDF copies of original files. These are made when the originals contain only _images of text_. The ocr copy has the raw text extracted for easier processing.
- `txt/` - Plain text copies of original files. These are made when the originals contain only _images of text_. The ocr copy has the raw text extracted for easier processing.

## How records were obtained

- Public records request submitted to the Town of Davie.
- Manual search on the Town website: https://davie-fl.gov

## Date range

### Request W014201-020626:

- Request submitted: February 6, 2026
- Request closed: February 25, 2026

## Known gaps / request status

- None. There are no open requests at this time.

## Verify file integrity (PowerShell)

```powershell
Get-FileHash .\originals\<filename>.pdf -Algorithm SHA256
```
