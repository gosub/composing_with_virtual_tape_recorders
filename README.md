# Composing with Virtual Tape Recorders

*Musique Concrète for Beginners, with VCV Rack*

After Terence Dwyer's *Composing with Tape Recorders* (OUP, 1971)
Adapted by Giampaolo Guiducci and Claude Sonnet 4.6

A modern adaptation of Terence Dwyer's *Composing with Tape Recorders: Musique Concrète for Beginners* (Oxford University Press, 1971), updated for the VCV Rack software modular synthesizer platform.

---

## What This Book Is

Dwyer's 1971 guide is one of the finest introductions to musique concrète ever written: practical, conversational, and grounded in actually *doing* things. This adaptation preserves his 9-chapter structure, his A–L technique lettering, his 53 exercises, and his artisanal spirit — replacing physical tape recorders with NYSTHI Simpliciter running inside VCV Rack.

Everything you need is free:
- [VCV Rack](https://vcvrack.com) — free, Windows/Mac/Linux
- [NYSTHI plugin](https://library.vcvrack.com/?brand=NYSTHI) — free, includes Simpliciter (requires a free VCV account)
- A computer with a sound card (a proper audio interface recommended but not required)

---

## Building the Book

### Recommended: Nix shell

A `shell.nix` is provided that pulls in all build dependencies automatically:

```bash
nix-shell --run "make pdf"    # → output/book.pdf
nix-shell --run "make html"   # → output/book.html
nix-shell --run "make clean"  # removes output files
```

### Manual requirements

- [Pandoc](https://pandoc.org) ≥ 3.0
- [Tectonic](https://tectonic-typesetting.github.io) (PDF engine, auto-downloads LaTeX packages)
- `rsvg-convert` from librsvg (converts SVG diagrams to PDF)
- DejaVu fonts (or edit `metadata.yaml` to use fonts you have)

---

## Project Structure

```
src/                    ← Markdown source chapters (12 files)
images/
  diagrams/             ← SVG signal-flow diagrams (10 SVGs)
  screenshots/          ← VCV Rack patch screenshots (10 PNGs)
filters/
  divs.lua              ← Lua filter: Creative Option boxes + SVG→PDF paths
templates/
  book.latex            ← Custom Pandoc/XeLaTeX template
style.css               ← Stylesheet for HTML output
metadata.yaml           ← Title, author, fonts, paper size
shell.nix               ← Nix build environment
Makefile                ← pdf / html / clean targets
```

---

## Technique Mapping

| Technique | Original | VCV Rack / Simpliciter |
|-----------|----------|------------------------|
| A | Straight Recording | Simpliciter REC mode |
| B | Mic Placement & Volume | Audio module input gain, VCA |
| C | Speed Change | Simpliciter SPEED knob + V/Oct CV |
| D | Reversal | Simpliciter REVERSE mode |
| E | Superimposition | Multiple Simpliciters → Mixer |
| F | Loops | Simpliciter LOOP modes |
| G | Editing | Simpliciter START/END markers + DAW sidecar |
| H | Two-Channel Separate | L/R signals → Stereo Audio OUT |
| I | Floodsound | Mono signal → both L+R channels |
| J | Two-Channel Combined | Pan module with LFO CV |
| K | Floodsound Plus | J + static layer |
| L | Echo | Chronoblob2 or any delay module |

---

## Review Progress

Paragraph-by-paragraph review against Dwyer's original, with corrections and additions.

| Chapter | Status |
|---------|--------|
| 0 — Preface | ✅ Complete |
| 1 — Any Number Can Play | ✅ Complete |
| 2 — Sounds Galore | ✅ Complete |
| 3 — First Steps | 🔄 In progress |
| 4 — What Are We Aiming At? | ⬜ Not started |
| 5 — Further Techniques | ⬜ Not started |
| 6 — Workaday Matters | ⬜ Not started |
| 7 — Sounds in Space | ⬜ Not started |
| 8 — Planning Complete Compositions | ⬜ Not started |
| 9 — Quo Vadis? | ⬜ Not started |
| Appendices | ⬜ Not started |
| Glossary | ⬜ Not started |

---

## Acknowledgements

This work is deeply indebted to Terence Dwyer's original book, which deserves far wider recognition. The philosophy, structure, exercises, and conversational tone of this adaptation are all his. Only the tools have changed.

---

## Changelog

### v0.3 — 2026-03-12
- Fix title page attribution: replace `author` field with "After Terence Dwyer's…" and "Adapted by…" formula in both PDF and HTML
- Add custom HTML template (`templates/book.html`) to render `after`/`adaptedby` metadata fields
- Fix shell.nix shellHook output: redirect to stderr to prevent contaminating build artefacts

### v0.2 — 2026-03-11
- Clarified NYSTHI installation steps: free VCV account required; subscribe at library.vcvrack.com; use **Update all** inside VCV Rack (fixes #1)

### v0.1 — 2026-03-10
- Initial release: all 12 chapters written, 53 exercises, 12 techniques A–L
- 10 SVG signal-flow diagrams
- 10 VCV Rack patch screenshots
- HTML output with stylesheet
- PDF output via Pandoc + Tectonic (A4, DejaVu fonts)
- GitHub Actions workflow: PDF release on version tag
