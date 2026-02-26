# Tools for ALPR-RECORDS

This folder does not contain any public records. It is meant to contain tools that help in processing public records.

## pdf-ocr.ps1

This script runs OCR on PDFs that contain images of text. It outputs new PDFs and plain text files that contain the same text present in those images.

Some public record PDFs are scanned documents, meaning the PDF pages contain only _images_ of text, not the text itself. This presents a challenge for finding specific words or phrases in these documents.

This script converts image-only PDFs into actual text, enabling researchers to analyze the documents more effectively.

### Dependencies

- [ocrmypdf](https://pypi.org/project/ocrmypdf/)
- [Ghostscript](https://www.ghostscript.com/releases/gsdnld.html)
- [Tesseract](https://github.com/tesseract-ocr/tesseract)

Installing/using these dependencies is out of scope for this project. They are only listed here for convenience.
