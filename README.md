# Composing with Virtual Tape Recorders

*Musique Concrète for Beginners, with VCV Rack*

**Original author:** Terence Dwyer
**Adapted for VCV Rack by:** Giampaolo Guiducci and Claude Sonnet 4.6

A modern adaptation of Terence Dwyer's *Composing with Tape Recorders: Musique Concrète for Beginners* (Oxford University Press, 1971), updated for the VCV Rack software modular synthesizer platform.

---

## What This Book Is

Dwyer's 1971 guide is one of the finest introductions to musique concrète ever written: practical, conversational, and grounded in actually *doing* things. This adaptation preserves his 9-chapter structure, his A–L technique lettering, his 58+ exercises, and his artisanal spirit — replacing physical tape recorders with NYSTHI Simpliciter running inside VCV Rack.

Everything you need is free:
- [VCV Rack](https://vcvrack.com) — free, Windows/Mac/Linux
- [NYSTHI plugin](https://library.vcvrack.com/?brand=NYSTHI) — free, includes Simpliciter
- A computer with a sound card (a proper audio interface recommended but not required)

## Building the Book

### Requirements

- [Pandoc](https://pandoc.org) ≥ 3.0
- XeLaTeX (from TeX Live or MiKTeX)
- Linux Libertine fonts (or edit `metadata.yaml` to use fonts you have)

### Commands

```bash
make pdf    # produces output/book.pdf
make html   # produces output/book.html
make clean  # removes output files
```

## Project Structure

```
src/                    ← Markdown source chapters
  00-preface.md
  01-any-number-can-play.md
  02-sounds-galore.md
  03-first-steps.md
  04-what-are-we-aiming-at.md
  05-further-techniques.md
  06-workaday-matters.md
  07-sounds-in-space.md
  08-planning-complete-compositions.md
  09-quo-vadis.md
  appendices.md
  glossary.md
images/
  diagrams/             ← SVG signal-flow diagrams
  screenshots/          ← VCV Rack patch screenshots (to be added)
templates/
  book.latex            ← Custom Pandoc/XeLaTeX template
metadata.yaml           ← Pandoc document metadata
Makefile                ← Build system
```

## Technique Mapping

| Technique | Original | VCV Rack / Simpliciter |
|-----------|----------|------------------------|
| A | Straight Recording | Simpliciter REC mode |
| B | Mic Placement & Volume | Audio-8 input gain, VCA |
| C | Speed Change | Simpliciter SPEED knob + V/Oct CV |
| D | Reversal | Simpliciter REVERSE mode |
| E | Superimposition | Multiple Simpliciters → Mixer |
| F | Loops | Simpliciter LOOP modes |
| G | Editing | Simpliciter START/END markers + DAW |
| H | Two-Channel Separate | L/R signals → Stereo Audio OUT |
| I | Floodsound | Split signal → both L+R |
| J | Two-Channel Combined | Pan module with LFO CV |
| K | Floodsound Plus | J + static layer |
| L | Echo | Chronoblob2 or any delay module |

## Screenshots

Screenshots in `images/screenshots/` are placeholders pending actual VCV Rack patch photography. The filenames correspond to references in the text.

## Acknowledgements

This work is deeply indebted to Terence Dwyer's original book, which deserves far wider recognition. The philosophy, structure, exercises, and conversational tone of this adaptation are all his. Only the tools have changed.

The original retypeset LaTeX source is at `../composing_with_tapes_retypeset/`.
