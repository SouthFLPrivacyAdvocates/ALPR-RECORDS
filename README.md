# Florida ALPR Public Records Archive

This repository contains **unaltered public records** related to the deployment and use of **Automated License Plate Reader (ALPR)** systems by government entities in Broward County, Florida.

The documents here were obtained through **lawful public records requests** and are provided for transparency, research, and civic review.

Documents may contain names and contact information of public officials or vendors acting in an official capacity. No resident or case-level data is included.

---

## Repository Structure

```
ALPR-RECORDS/
├── weston/
│   ├── originals/   # Original PDFs received from the City of Weston
│   ├── hashes/      # Cryptographic hashes for file verification
│   └── README.md    # Context and notes specific to Weston
│
├── bso/
│   └── README.md    # Context and notes specific to Broward Sheriff's Office records
│
└── README.md        # (this file)
```

Each subdirectory corresponds to a **separate government entity** and should be read independently.

---

## What These Files Are (and Are Not)

These files are:

- Original PDFs as provided by government agencies
- Unedited and preserved with original filenames
- Accompanied by cryptographic hashes for integrity verification
- Intended to support informed public discussion

These files are not:

- Commentary or analysis
- Allegations of wrongdoing
- Advocacy materials
- Edited, annotated, or reformatted copies

---

## File Integrity & Verification

Where applicable, SHA-256 hashes are provided in each entity’s `hashes/` directory.

Anyone can independently verify that a downloaded PDF matches the archived version.

Example (Windows PowerShell):

```
Get-FileHash .\originals\<filename>.pdf -Algorithm SHA256
```

Example (macOS / Linux):

```
shasum -a 256 originals/<filename>.pdf
```

Compare the output to the corresponding entry in `hashes/sha256.txt`.

---

## Provenance

All documents were received directly from:

- Municipal clerks, or
- Law enforcement agencies

in response to public records requests under Florida law.

No documents were scraped, leaked, or obtained through non-public means.

---

## Scope & Expansion

This repository may grow to include:

- Additional municipalities
- Additional law enforcement agencies
- Supplemental records released after follow-up requests

Each entity will be documented in its own directory with its own README explaining context and scope.

---

## Neutrality Statement

This repository exists to **preserve and share public records**, not to argue for or against any specific policy or technology.

Readers are encouraged to:

- Review the documents directly
- Draw their own conclusions
- Consult original sources if desired

---

## Questions or Corrections

If a document appears to be missing, mislabeled, or duplicated, please reference the filename and directory so it can be reviewed.

---

## License clarification

The documents in this repository are government public records obtained from public agencies.

The CC0 1.0 Universal dedication applies only to any copyright or database rights that may exist in the compilation, organization, metadata, hashes, and documentation created for this repository.

It does not assert ownership over the underlying public records themselves.
