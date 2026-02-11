from pypdf import PdfReader
import sys
from pathlib import Path

if len(sys.argv) < 2:
    print("Usage: python extract_pdf_text.py <pdf-path>")
    sys.exit(1)

pdf_path = Path(sys.argv[1])
if not pdf_path.exists():
    print(f"File not found: {pdf_path}")
    sys.exit(1)

reader = PdfReader(str(pdf_path))
texts = []
for i, page in enumerate(reader.pages, start=1):
    text = page.extract_text() or ""
    texts.append(f"\n--- PAGE {i} ---\n" + text)

print("\n".join(texts))
