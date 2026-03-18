# First Steps

This chapter is about getting sound into Simpliciter, and then doing interesting things to it. Dwyer called this section "First Steps" and that's exactly what it is, not because the ideas are small, but because you have to walk before you can run. The four techniques here (A through D) are the foundation everything else builds on. By the end of this chapter you will be recording sounds, adjusting gain and placement, changing playback speed, and reversing recordings. That is, in fact, quite a lot.

## Technique A — Straight Recording

The first thing to master is making Simpliciter capture a sound faithfully. Before you worry about manipulation, you need to trust the machine. A good straight recording is the raw material for everything that follows.

If you built the starter patch from Chapter 1, you already have everything you need: the Audio module connected to Simpliciter, and Simpliciter routed back to your speakers. If not, go back to Chapter 1 and set it up now.

Here is the recording process, step by step.

**1. Check your signal.** Make a sound near your microphone. Simpliciter's waveform display should show activity. If it doesn't, check that the Audio module has the correct device selected and that cables are routed from its output jacks to Simpliciter's IN jacks.

**2. Record.** On the Simpliciter panel, find the **REC** button. Click it to begin recording. The waveform display will start filling as audio comes in. Click REC again to stop.

**3. Play it back.** Press the PLAY button. Your sound plays back through Simpliciter's OUT jacks and into your speakers via the Audio module. If it sounds like what you recorded, you've mastered Technique A. That's it.

One important practical note: Simpliciter does not automatically save your recordings. If you close VCV Rack, anything you recorded is lost. To keep a recording, right-click on Simpliciter's panel and select **Save Wav File...**. Choose a location and filename. To reload it later, right-click again and select **Open Wav or Aiff File...**. Make a habit of saving recordings you want to keep, especially before closing your patch.

![Technique A — straight recording patch](images/screenshots/technique-a-straight-recording.png)

![Signal flow: Audio → Simpliciter → Output](images/diagrams/technique-a.svg)

::: {.creative-option}
**Tape Saturation**: Real tape recorders saturated when recorded too hot, producing a warm, slightly compressed sound that many producers still chase today with expensive plugins. In VCV Rack, you can get something similar by patching your audio through NYSTHI Console (or any saturator module) before it reaches Simpliciter's IN jack. Push the input gain just past the sweet spot and you'll hear the transients soften and the body of the sound fill out. It doesn't sound broken. It sounds *warm*. Whether you want that warmth on a given recording is a creative decision, but it's worth knowing it's there.
:::

### Exercise 1

*(5 minutes)*

Take a sheet of paper and divide it into 96 squares: eight columns across, twelve rows down. Label the four leftmost columns: **Tones**, **Mistones**, **Pseudotones**, **Sones**. (If those words are unfamiliar, they're explained properly in Chapter 2: briefly, Tones are sounds with clear pitch, Mistones are sounds with approximate or unstable pitch, Pseudotones are sounds that suggest pitch without quite having it, and Sones are unpitched sounds.) The rows represent varying durations and characters: short, long, sharp attack, slow fade, and so on.

Fill the leftmost square in each row with a description of a sound source you can record: your voice, keys rattling, a fan, a door hinge, a spoon on a glass. Then go and record them. Use Simpliciter for each one and save each recording as a separate wav file (right-click > **Save Wav File...**) so you can return to them later.

The goal is 48 sounds across as many of the 96 categories as you can fill. Don't rush.

*Note: Certain categories are genuinely hard to fill, fading Sones especially. A Sone that slowly diminishes to nothing requires either a naturally decaying sound or careful volume automation. Leave blanks rather than force an uncomfortable fit. The blank squares are themselves informative: they show you where to listen harder on future walks.*

---

## Technique B — Input Gain and Mic Placement

Dwyer spent considerable time on microphone placement because on a tape recorder, once a recording is made at the wrong level or from the wrong distance, there's no going back. Digital recording is slightly more forgiving (you can normalise a quiet recording in a DAW, for instance) but Dwyer's underlying point still holds: the decisions you make at the moment of recording shape the character of the sound in ways that can't always be undone after the fact. Placement and gain are creative tools, not just technical housekeeping.

There are four basic placement positions worth knowing:

**Close**: the microphone is very near the sound source, a few centimetres away. You hear the detail, the breath, the texture. Loud sounds can overload the input at this distance.

**Normal**: a conversational distance, perhaps half a metre to a metre away. The sound is balanced. This is the default.

**Reverb**: the microphone is positioned to catch the room's acoustic response as much as the direct sound, across a large room, in a corridor, or facing a hard wall at a distance. The reverb is physically real and therefore has a particular character no plugin can quite replicate.

**Muffled**: something is placed between the sound source and the microphone, a piece of cloth, a cushion, your hand. The high frequencies are absorbed and the result is a dark, underwater character.

In VCV Rack, gain staging is handled in two places. The Audio module has an input gain adjustment (right-click for options on some builds, or use the trim knob if visible). Before the signal reaches Simpliciter, you can also insert a VCA module (a Fundamental VCA works fine) and use its level knob as a precise input trim.

To monitor levels, you can patch the signal through a Fundamental Scope module running in parallel, which gives you a real-time visual of the waveform. But don't rely on meters and scopes alone. Use headphones. The most important monitor is your ear: does the recording *sound* right? A meter can tell you a signal is present, but only listening can tell you whether it's the recording you wanted.

::: {.creative-option}
**Room Reverb**: Dwyer notes that recording in a corridor or bathroom gives reverb you can't easily manufacture. That's true, and if you have a bathroom available, use it. But you can also manufacture it digitally: patch Simpliciter's OUT through Valley Plateau (or Befaco Spring Reverb, or Vult Freak in reverb mode) and route that processed signal into a second Simpliciter's IN, then record the wet signal. The reverb becomes *baked in* to the new recording, exactly as it would on tape. Dwyer would have recognised this two-machine technique immediately. The difference is that your second "tape machine" costs nothing and takes up no desk space.
:::

### Exercise 2

*(40 seconds)*

Record the same sound (your voice saying a single word, or a single hand clap) four times in a row, as four separate Simpliciter recordings: Close soft, Close loud, Reverb soft, Reverb loud. Save each as a wav file. Play them back in sequence. The differences in character should be striking even with the same source material.

### Exercise 3

*(80 seconds)*

Make a short two-section piece. The first section: a soft, muffled tremolo, something that oscillates quietly, recorded with cloth over the microphone or at a heavy angle away from the source. The second section: a long, loud reverb recording, voice or instrument in a reflective space, or processed through a reverb unit. Arrange the two sections back-to-back in Simpliciter (or in a DAW if you're using one) without any transition. The abruptness is part of the piece.

### Exercise 4

*(80 seconds)*

Reverse the character of Exercise 3. Open with the loud reverb material, close with the soft muffled tremolo. The same two recordings, different order. Notice how the meaning changes.

### Exercise 5

*(80 seconds)*

Record a continuous sustained sound: a bowed string, a held voice tone, a fan, anything that can sustain. Play it back through Simpliciter and route Simpliciter's OUT through a VCA. Now draw a CV automation curve (using VCV Rack's CV-MAP or a simple Fundamental LFO with an attack/decay shape) that creates a slow crescendo from silence to full volume, then a diminuendo back to silence. The goal is a smooth dynamic arc, the kind that is almost impossible to achieve with a single microphone recording but trivially easy with volume automation. Dwyer had to re-record to achieve this effect. You don't.

*Note: The distinction between altering the recording itself and altering its playback level is important and comes up repeatedly in this book. Technique B is about recording level; what you're doing in Exercise 5 is playback shaping. Both matter, and they're different tools.*

---

## Technique C — Speed Change

This is where things start to sound strange in interesting ways.

Simpliciter's **SPEED knob** controls the playback rate. At the centre position, the knob is at 1x, normal speed. Turn it clockwise and the playback accelerates: the sound gets shorter and its pitch rises. Turn it anticlockwise and playback slows: the sound stretches out and its pitch drops. The relationship between speed and pitch is exactly what you'd expect from a tape recorder running faster or slower: they are inseparable, at least with this technique. (Granular pitch-shifting, which separates the two, comes later.)

The **V/Oct CV input** on Simpliciter extends this considerably. If you patch a CV voltage to this input, you can control the playback pitch in semitone steps, exactly as a keyboard CV would control a synthesiser oscillator. Patch a sequencer to this input and you can play your recording as if it were a note in a scale. Patch an LFO to it and you get a vibrato-like pitch wobble. The recording becomes an instrument.

Dwyer listed six specific consequences of halving or doubling playback speed on a tape recorder. Here they are, mapped to Simpliciter:

1. **Pitch drops/rises by an octave.** Halving speed drops pitch by an octave (twelve semitones); doubling raises it by an octave.
2. **Duration doubles/halves.** A two-second recording at half speed takes four seconds to play back.
3. **Envelope characteristics change.** A sharp attack at normal speed becomes a slow swell at half speed. A slow fade becomes a rapid cutoff at double speed.
4. **Frequency content shifts.** High-frequency detail (consonants in speech, the bite of a bow on strings) moves down into the audible midrange at half speed, revealing textures that were previously too fast to hear clearly.
5. **Noise floor changes character.** The hiss and rumble of any recording shifts with the speed. At half speed, high-frequency hiss drops to midrange hiss. Not always desirable, but worth knowing.
6. **Rhythmic patterns stretch or compress.** Any internal rhythm in the recording, a stutter, a tremolo, a repeated attack, becomes slower or faster, changing its relationship to anything else in the piece.

These six consequences are not problems to be solved. They are materials to be used.

![Technique C — Speed Change patch with CV control](images/screenshots/technique-c-speed-change.png)

![Signal flow: Speed CV → Simpliciter SPEED](images/diagrams/technique-c.svg)

### Exercise 6

*(40 seconds)*

Take a recording from Exercise 1 (choose one with clear pitch if you have one). Play it back at half speed. Then at double speed. Write down one observation about each that you didn't anticipate.

### Exercise 7

*(80 seconds)*

Record a short spoken phrase: your name, a line of poetry, a sentence you like. Play it back at half speed. At what point does it stop sounding like speech and start sounding like something else? Mark that point on Simpliciter's speed knob. That boundary is interesting creative territory.

### Exercise 8

*(80 seconds)*

Patch a simple stepped CV sequence (use a Fundamental SEQ-3 or any sequencer you have available) to Simpliciter's V/Oct input. Use a recording that has a clear sustained tone, a hummed note, a bowed string. Play the sequence and listen to your recording transposed across a scale. You are, at this point, playing the recording as an instrument. This is musique concrète meeting something closer to electronic music composition. It doesn't have to stay there, but it's useful to know the territory is adjacent.

---

## Technique D — Reversal

Press the **REVERSE button** on Simpliciter while in PLAY mode. The playhead now runs backwards through the recording. That's all it takes.

What that simple reversal does to sound, however, is remarkable. The attack and decay of every sound are swapped. A sound that began with a sharp percussive strike and decayed slowly now begins with a slow swell from nothing and ends with a sudden cutoff, the opposite of what the ear expects. A piano note, which has an immediate attack and a long decay, reversed sounds uncannily like an organ or a bowed string. A word spoken forwards becomes a syllable that seems to arrive from underwater. A door slamming reversed sounds like a door opening very quickly from far away.

Dwyer was enthusiastic about reversal because it could transform utterly familiar sounds into the unfamiliar. He recounted a rumour about a bagpipe LP that was supposedly pressed in reverse by the manufacturer and returned by nobody, the reasoning being that bagpipe tones have such a continuous, steady character that reversing them changes almost nothing. Whether the story is true hardly matters; it perfectly illustrates the principle: reversal is most dramatic on sounds with a clear difference between their beginning and their end.

The microwave you recorded an hour ago becomes, reversed, something you have never heard before.

In Simpliciter, reversal can also be controlled by a CV input: a gate signal can switch direction on and off in real time, which opens up possibilities for alternating forward and backward playback mid-phrase. We'll return to that in a later chapter. For now, use the button.

![Technique D — Reversal](images/screenshots/technique-d-reversal.png)

::: {.creative-option}
**Delay/Echo as creative reversal pair**: Try patching reversed playback through a short delay module. Chronoblob2 works beautifully here, or Audible Instruments Clouds in looping delay mode. The reversed sound plus its echo creates an uncanny shimmer: you hear the sound arriving before its apparent source, which gives the whole thing a ghostly, pre-echo quality. This maps most directly to Technique L (Echo), which we cover properly later, but the combination of reversal and a short delay is one of those discoveries worth making early.
:::

### Exercise 9

*(40 seconds)*

Take your spoken phrase from Exercise 7. Reverse it. Listen carefully. Identify two specific phonemes or syllables that sound most transformed by the reversal, not just different, but interestingly different.

### Exercise 10

*(40 seconds)*

Record a sound with a very sharp attack: a hand clap, a key strike, a finger snap. Reverse it. Listen to the slow swell that replaces the sharp attack. Record a second sound with a slow attack and sharp cutoff (a fade-in clap, if you can manage it, or a held tone that you cut sharply). Reverse that. The two reversed sounds should now have roughly opposite envelope shapes to what they started with.

### Exercise 11

*(80 seconds)*

Use both forward and reversed versions of the same recording in a short piece. Play the forward version for a few seconds, then switch Simpliciter to reverse. You can do this by clicking the REVERSE button manually during playback, or by pre-arranging the two versions side by side in a DAW. Notice the seam: does it sound like a cut, like a reflection, or like something else?

### Exercise 12

*(80 seconds)*

Take a recording that has an obvious internal rhythm: tapping, a repeated word, a metronome. Reverse it. Does the rhythm survive? Is it the same rhythm, or does it feel different? Write one sentence about what changes and what doesn't.

### Exercise 13

*(5 minutes)*

Make a short piece (thirty to sixty seconds) using only reversal and speed change, Techniques C and D combined. No other manipulation. You have at most three recordings available to you. The constraint is the point: work within it.

*Note: The combination of reversal and speed change is, historically, where a great deal of early musique concrète began. Pierre Schaeffer's études from 1948, often cited as the first musique concrète compositions, were built almost entirely from exactly these two techniques. You are, with Exercises 6 through 13, working in a tradition that is older than most popular music you know.*
