---
name: translate-cv
description: Keep the English and Spanish CV sources synchronized while preserving LaTeX structure and technical names.
---

# Translate the CV

The canonical CV content is maintained in both:

- `CV-Rodrigo-Fernandez-Huarca_en.tex`
- `CV-Rodrigo-Fernandez-Huarca_es.tex`

When either CV changes:

1. Apply the same structural, factual, and formatting changes to the other language.
2. Translate prose, headings, role descriptions, and education labels; do not translate product names, technologies, APIs, company names, URLs, email addresses, LaTeX commands, or code identifiers.
3. Preserve the same sections, entries, dates, metrics, links, and bullet count in both files.
4. Keep LaTeX escaping valid (`&`, `%`, `#`, `_`, and accented characters).
5. Build both documents with `make` and fix compilation errors before reporting completion.

Do not use an external translation service or silently invent missing facts. If a sentence is ambiguous or a factual change is unclear, ask the user instead of guessing.
