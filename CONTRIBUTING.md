# Contributing Guidelines

This repository exists to **preserve and share original public records** related to Automated License Plate Reader (ALPR) systems.  
Accuracy, provenance, and trust are the highest priorities.

Please read these guidelines carefully before contributing.

---

## Guiding Principles

All contributions must adhere to the following principles:

1. **Originals only**
2. **No editorialization**
3. **Verifiable provenance**
4. **Reproducibility**
5. **Minimal transformation**

If a contribution does not meet these principles, it should not be submitted.

---

## What Contributions Are Accepted

### ✅ Accepted Contributions

- Original PDF documents received directly from a government entity
- Supplemental public records released via follow-up requests
- Additional entity directories (e.g., new cities or agencies)
- Corrections to filenames or directory placement (with explanation)
- Documentation updates (README files, metadata, hashes)

### ❌ Not Accepted

- Annotated, highlighted, redlined, or OCR-modified PDFs
- Screenshots of documents instead of original files
- Opinion, commentary, or analysis added to document folders
- Renamed files that obscure original filenames
- Zipped archives of documents
- Documents obtained via scraping, leaks, or non-public access

---

## Directory Structure Rules

Each government entity must have its **own directory** with the following structure:

entity-name/
├── originals/ # Unmodified PDFs as received
├── hashes/ # Cryptographic hashes for originals
└── README.md # Context specific to this entity

Do not mix documents from different entities in the same directory.

---

## File Handling Rules (Very Important)

- Preserve **original filenames exactly**
- Do not open and re-save PDFs in an editor
- Do not compress or optimize PDFs
- Do not remove metadata
- If a file must be renamed for technical reasons, retain the original filename and explain the change in the entity README

---

## Hash Generation (Required)

All PDFs must have corresponding SHA-256 hashes.

Hashes should be generated from the files **after** they are placed in the `originals/` directory.

Example (Windows PowerShell):

```
Get-ChildItem .\originals\*.pdf | ForEach-Object {
  $h = (Get-FileHash $_.FullName -Algorithm SHA256).Hash.ToLower()
  "$h  originals/$($_.Name)"
} | Out-File -Encoding ascii .\hashes\sha256.txt
```

Example (macOS / Linux):

```
shasum -a 256 originals/*.pdf > hashes/sha256.txt
```

---

## README Requirements (Per Entity)

Each entity directory must include a `README.md` describing:

- The government entity
- How the records were obtained (e.g., public records request)
- Date range of the documents
- Any known gaps or pending requests
- Notes necessary to understand scope (without analysis or opinion)

Keep the tone factual and neutral.

---

## Commit Guidelines

Commits should be:

- Descriptive
- Minimal
- Focused on a single change set

Good examples:

- `Add City of Weston ALPR public records (original PDFs)`
- `Add SHA-256 hashes for Weston documents`
- `Add README for BSO records`

Avoid vague messages like:

- `update files`
- `changes`
- `misc`

---

## Neutrality and Non-Advocacy

This repository is an **archive**, not a campaign platform.

Do not:

- Argue for or against ALPR use
- Assign intent or motivation
- Insert conclusions into documentation

Analysis and advocacy belong **outside** this repository.

---

## Legal and Ethical Notes

- Only contribute documents you are legally entitled to share
- Do not include personal identifying information beyond what appears in the original public record
- If a document appears to contain sensitive information released in error, raise it as an issue rather than publishing it

---

## Questions or Uncertainty

If you are unsure whether a document or change belongs here:

- Open an issue describing the material and its source
- Do not submit the file until clarified

Trust and accuracy are more important than speed.

---

Thank you for helping maintain a transparent, verifiable public records archive.
