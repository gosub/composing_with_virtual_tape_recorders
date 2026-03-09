# Appendices

## Appendix A — Recommended Listening

The recordings listed here are not a canon or a curriculum — they're a starting point. Each one represents something distinct about the history and practice of composed electronic and concrete music. Listen in any order. Let them suggest further listening of your own.

---

**Pierre Schaeffer — *Études de bruits* (1948)**
The founding documents. Five études made entirely from recorded sounds: trains, spinning tops, barge horns, canal locks, spoken voice. Schaeffer was figuring out the practice in real time; you can hear him discovering what recorded sound can do. The first serious musique concrète ever made. Still startling.

**Pierre Henry & Michel Colombier — *Psyché Rock* (1967)**
If you've heard only one piece of musique concrète, there's a good chance it was this one, rearranged — Fatboy Slim used it as the basis for the *Futurama* theme. But hear the original. Henry's electronic percussion and Colombier's orchestration made something genuinely strange and genuinely funky, long before those two qualities were supposed to coexist.

**Pierre Henry — *Variations pour une porte et un soupir* (1963)**
An entire forty-three-minute composition built from the sounds of a single creaking door — nothing else. This is the exercise in Chapter 3 taken to its ultimate conclusion. Henry found every pitch, every rhythm, every texture latent in that door's range of motion. A demonstration that the constraint of a single sound source is not a limitation but a discipline.

**Karlheinz Stockhausen — *Gesang der Jünglinge* (1956)**
One of the great pieces of the twentieth century by any standard. Stockhausen combined a boy soprano's voice with electronically synthesised tones, transforming them until they were sometimes indistinguishable from each other. The spatial diffusion — it was originally mixed for five loudspeaker groups surrounding the audience — set the template for everything in multichannel electroacoustic music that followed.

**Karlheinz Stockhausen — *Kontakte* (1960)**
Fifty-five minutes of tape composition (or, in the concert version, tape plus live piano and percussion). The title means "contacts" — the work is about the relationships between electronic and instrumental sound, and about the contact between different time-scales, from the individual sample to the large-scale form. Challenging and essential.

**Edgard Varèse — *Poème électronique* (1958)**
Created for the Philips Pavilion at the 1958 Brussels World Exposition, where it was played through 425 loudspeakers for an audience walking through a building designed by Le Corbusier and Xenakis. Eight minutes of pure sound, organised without melody or harmony in any conventional sense. The piece exists now only as a stereo recording of something that was designed for a space that no longer exists — which is itself a lesson about the relationship between music and time.

**Alvin Lucier — *I Am Sitting in a Room* (1969)**
Lucier recorded himself reading a short text, then played that recording back into the room and recorded the playback, then played that recording back and recorded it, and so on — forty-plus iterations. By the end, the intelligibility of the words is completely eroded and only the resonant frequencies of the room remain. A piece about room acoustics, about the transformation of speech into tone, and about repetition as compositional process. Entirely reproducible with a single Simpliciter and patience.

**Iannis Xenakis — *Concret PH* (1958)**
Two minutes and forty seconds made from the sounds of charcoal burning — specifically, the crackling of hot embers. Xenakis processed and layered the recordings until the crackle became a continuous, seething texture. Also composed for the Philips Pavilion and played as audiences entered and exited. Sounds like nothing else.

---

**Matmos — *A Chance to Cut Is a Chance to Cure* (2001)**
An album composed entirely from sounds recorded in medical settings: liposuction, laser eye surgery, ultrasound machines, the specific snapping of a latex glove. Matmos treated this clinical material with rigorous compositional technique and made something that is genuinely pleasurable to listen to while remaining anatomically precise in its sources. A contemporary demonstration of Schaeffer's original premise.

**The Caretaker — *Everywhere at the End of Time* (2016–2019)**
A six-album, six-and-a-half-hour work in which James Leyland Kirby used looped and degraded recordings of 1930s ballroom music to trace the stages of dementia — from recognition through confusion to disintegration. The later stages, in which the source material becomes almost unrecognisable, are among the most affecting uses of tape-style degradation ever made. Be prepared. It is genuinely difficult listening by the end, as it intends to be.

**Holly Herndon — *Platform* (2015)**
Herndon's music sits at the intersection of electronic composition, pop structure, and academic theory, and *Platform* is where those three things cohere most productively. The album is organised around surveillance, the body, and the laptop as musical instrument. Technically sophisticated but emotionally immediate.

---

**VCV Rack Community — Patchstorage.com**

[Patchstorage](https://patchstorage.com) is a living, continuously updated resource. Filter by "VCV Rack" and browse. Listen to the audio previews. Download patches from composers you find interesting and open them in VCV Rack to see how they were built. This is an education that no book can fully replicate.

---

## Appendix B — Recommended Modules

All modules listed here are free and available through the VCV Library unless otherwise noted.

### Essential (Free)

**NYSTHI Simpliciter**
The virtual tape recorder at the centre of everything in this book. Records audio, plays it back, reverses it, loops it, changes speed and pitch. The NYSTHI plugin collection containing Simpliciter is installed through the VCV Library.

**VCV Audio**
Your connection between VCV Rack and your computer's audio hardware. Handles both input (microphone or audio interface) and output (speakers or headphones). Comes pre-installed with VCV Rack.

**VCV Mixer**
A straightforward multi-channel mixer. Combine signals from multiple sources and send them to your audio output. Comes pre-installed.

**VCV VCA**
Voltage Controlled Amplifier. Controls the volume of a signal using a CV input, allowing you to automate fades and envelopes. Essential for dynamic control. Comes pre-installed.

**Bogaudio PAN**
A simple stereo panning module. Routes a mono signal to a specific position in the stereo field. Use it to place sounds in space.

### Useful (Free)

**Valley Plateau**
A high-quality reverb module with a clean interface. Based on the Plateau hardware reverb algorithm. Add depth and space to recordings.

**Befaco Spring Reverb**
A simulation of a physical spring reverb tank — the particular metallic, resonant reverb sound associated with 1960s electronic music and tape studios. Adds character rather than mere space.

**Chronoblob2**
A tape-style delay module. Its character resembles analogue tape echo rather than clean digital delay — slight pitch wobble, gradual filtering of echoes, warmth on the repeats. Very useful for musique concrète work.

**NYSTHI Console**
A mixing console with tape saturation characteristics. Running signals through it adds the gentle warmth and soft-clipping of analogue tape. Useful for gluing multiple tracks together.

**Audible Instruments Texture Synthesizer**
A software simulation of the Mutable Instruments Clouds module: a granular processor. Feed any audio signal in and it granularises it — creating clouds, smears, pitch-shifted textures, and strange frozen moments. The next step after this book. Start with a Simpliciter output feeding directly into it.

### For Automation (Free)

**VCV SEQ-3**
A three-row, eight-step sequencer. Each row can send either CV (pitch) or gate (trigger) signals. Use the gate rows to automate Simpliciter playback — connect a gate output to Simpliciter's PLAY input and the sequencer will trigger playback on each active step.

**VCV LFO**
Low Frequency Oscillator. Produces a slowly cycling signal — sine wave, triangle, square, sawtooth — that can be used to modulate parameters over time. Connect its output to a VCA's CV input for slow, automatic fades; connect it to Simpliciter's SPEED input for gradual pitch drift.

**Bogaudio ADDR-SEQ**
An addressable step sequencer: you can jump to any step directly using a CV input, rather than always moving linearly through the sequence. Useful for non-linear trigger patterns and for creating playback orders that respond to CV control.

---

## Appendix C — Useful Sound Sources

### Tones (from musical instruments, conventional use)

Sustained notes on any instrument. Piano chords held with sustain pedal fully depressed. Long bowed cello or violin notes. Sustained brass or woodwind tones. Harmonics on stringed instruments. Singing bowls. Tuning forks. Electronic tones from other VCV Rack modules.

### Mistones (from musical instruments, unconventional use)

Piano strings plucked or strummed directly. Piano felt muffled against strings. Bow applied near the bridge with excessive pressure. Bow applied to the wrong side of the bridge. Wind instruments overblown. Keys clicked without blowing. Percussion instruments bowed. Strings slapped against the fingerboard. Prepared piano (coins, bolts, paper placed on strings).

### Pseudotones (environmental sounds with pitch character)

Running water at different pressures. Singing or humming fluorescent lights. Electrical hum from transformers and power supplies. Fan motors at various speeds. Wine glasses rubbed with a damp finger. Large metal objects set ringing by a mallet. Stretched elastic bands. Spinning bicycle wheels. Swingset chains. Kettles at different stages of heating.

### Sones (sounds without pitch character)

Rain on different surfaces — glass, metal, tile, wood. Wind through various gaps. Paper crumpling, tearing, rustling. Footsteps on different surfaces. Crowd noise. Traffic. Knocking on wood, metal, glass. Water dripping or splashing. Fire. Breaking glass. Keys rattling. Coins dropped on hard surfaces. Distant thunder.

### Computer and Electronic Sounds

Keyboard typing sounds (mechanical keyboards, laptop keyboards, phone keyboards — each distinct). Mouse clicks. Hard drive access sounds (older mechanical drives especially). Cooling fan noise at different loads. Notification sounds and system beeps. Modem handshake sounds (available in recordings online). The specific quality of a bad audio cable connection.

### Field Recording

Your phone is a capable field recording device. Most modern smartphones have microphones sensitive enough for useful results. Use the default voice memos or voice recorder app — you don't need specialised software to start. For better results, position the phone carefully: hold it still, point the microphone toward the sound source, minimise handling noise by placing the phone on a surface rather than holding it.

Good places to record: under bridges near water, inside large empty buildings, near industrial machinery (at a safe distance), close-up on insects or birds, inside vehicles, near large crowds.

*Note: Always record your own sounds. Do not sample commercial recordings without clearance — doing so without permission may infringe copyright, and clearance for even a short sample from a commercial recording can be expensive or impossible to obtain. The world contains more interesting sounds than any commercial library. Go and record them.*

---

## Appendix D — VCV Rack Quick-Start

A single-page guide for your first session. Read this before opening the software.

**1. Download VCV Rack**
Go to [vcvrack.com](https://vcvrack.com) and download VCV Rack 2 Free for your operating system (Windows, Mac, or Linux). Install it and open it.

**2. Install the NYSTHI plugin**
In VCV Rack, go to the **Library** menu and select **Manage Plugins**. You'll be prompted to log in or create a free VCV account. Once logged in, search for **NYSTHI** and click Install. After installation, restart VCV Rack.

**3. Create a new patch**
From the File menu, select **New**. You'll see a blank canvas.

**4. Add the Audio module**
Right-click anywhere on the blank canvas to open the module browser. Search for **Audio** and add the VCV Audio module. Click on the device display and select your audio interface or built-in soundcard.

**5. Add the NYSTHI Simpliciter**
Right-click again and search for **Simpliciter**. Add it to the canvas.

**6. Connect Audio to Simpliciter (input)**
Click and drag from the Audio module's **OUT 1** jack to Simpliciter's **IN L** jack. Then drag from **OUT 2** to **IN R**. This routes your microphone signal into Simpliciter.

**7. Connect Simpliciter to Audio (output)**
Drag from Simpliciter's **OUT L** jack to the Audio module's **IN 1** jack, and from **OUT R** to **IN 2**. This sends Simpliciter's output to your speakers.

**8. Record a sound**
Make sure your microphone is connected. Click the **REC** button on Simpliciter to arm it, then click **REC** again to begin recording. Make a sound near the microphone. Click **REC** once more to stop.

**9. Play it back**
Click the **PLAY** button. You'll hear your recording played back. You're ready to explore.

*Note: Save your patch often (File → Save) using a descriptive filename. VCV Rack patches are small text files; you can keep as many as you like.*
