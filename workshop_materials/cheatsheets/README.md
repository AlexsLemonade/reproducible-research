

`doctoc` was run on `unix_reference.md` to create the TOC.

This [template](https://github.com/Wandmalfarbe/pandoc-latex-template/releases/tag/v2.0.0) was installed to support PDF conversion.

`pandoc` was used to create PDFs:

```
pandoc unix_reference.md -o unix_reference.pdf --from markdown --template eisvogel --highlight-style tango
pandoc unix_quick_reference.md -o unix_quick_reference.pdf --from markdown --template eisvogel # no code here, so no highlighting needed
```
