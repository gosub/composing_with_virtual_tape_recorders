# First Steps

This chapter is about getting sound into Simpliciter, and then doing interesting things to it. Dwyer called this section "First Steps" and that's exactly what it is, not because the ideas are small, but because you have to walk before you can run. The four techniques here (A through D) are the foundation everything else builds on. By the end of this chapter you will be recording sounds, adjusting gain and placement, changing playback speed, and reversing recordings. That is, in fact, quite a lot.

## Technique A — Straight Recording

The first thing to master is making Simpliciter capture a sound faithfully. Before you worry about manipulation, you need to trust the machine. A good straight recording is the raw material for everything that follows. Knowing what a faithful recording sounds like is also what tells you, later, how far you have departed from it. Besides, if a sound has fascinated you, you want to be sure you can actually catch it.

If you built the starter patch from Chapter 1, you already have everything you need: the Audio module connected to Simpliciter, and Simpliciter routed back to your speakers. If not, go back to Chapter 1 and set it up now.

Here is the recording process, step by step.

**1. Check your signal.** Make a sound near your microphone. The ring of the Audio module's output jack should glow yellow, with brightness proportional to the signal level. This is visible even with a cable attached. If you want a more detailed view, add a **Scope** module (from the VCV Fundamental pack) and connect the Audio output to it. If you see no signal, check that the Audio module has the correct device selected and that cables are routed to Simpliciter's IN jacks.

**2. Record.** On the Simpliciter panel, find the **REC** button. Click it to begin recording. The waveform display will start filling as audio comes in. Click REC again to stop. By default, Simpliciter will immediately start playing back what you just recorded — so you'll hear your sound right away.

One important difference from a physical tape recorder: once you stop recording in Simpliciter, you cannot continue recording in the same take. You can only overwrite what is there or record on top of it (sound-on-sound). If you need to capture sounds in sequence as separate takes, use a separate Simpliciter for each one. A more advanced approach is to use two Simpliciters in series: play the first without looping and connect its EOC (End of Cycle) output to trigger recording on the second.

One important practical note: Simpliciter does not automatically save your recordings. If you close VCV Rack, anything you recorded is lost. To keep a recording, right-click on Simpliciter's panel and select **Save Wav File...**. Choose a location and filename. To reload it later, right-click again and select **Open Wav or Aiff File...**. Make a habit of saving recordings you want to keep, especially before closing your patch.

![Technique A — straight recording patch](images/screenshots/technique-a-straight-recording.png)

![Signal flow: Audio → Simpliciter → Output](images/diagrams/technique-a.svg)

::: {.creative-option}
**Tape Saturation**: Real tape recorders saturated when recorded too hot, producing a warm, slightly compressed sound that many producers still chase today with expensive plugins. In VCV Rack, you can get something similar with [ChowDSP ChowTape](https://library.vcvrack.com/ChowDSP/ChowTape), a free module that models the behaviour of magnetic tape. Patch your audio through it before it reaches Simpliciter's IN jack. You'll hear the transients soften and the body of the sound fill out. It doesn't sound broken. It sounds *warm*. Whether you want that warmth on a given recording is a creative decision, but it's worth knowing it's there.
:::

### Exercise 1

*(5 minutes)*

Take a sheet of paper and divide it into 96 squares: eight columns across, twelve rows down. Label the four leftmost columns: **Tones**, **Mistones**, **Pseudotones**, **Sones**. (If those words are unfamiliar, they're explained properly in Chapter 2: briefly, Tones are sounds with clear pitch, Mistones are sounds with approximate or unstable pitch, Pseudotones are sounds that suggest pitch without quite having it, and Sones are unpitched sounds.) The rows represent varying durations and characters: short, long, sharp attack, slow fade, and so on.

Fill the leftmost square in each row with a description of a sound source you can record: your voice, keys rattling, a fan, a door hinge, a spoon on a glass. Then go and record them. For each sound, record it three times before moving on — repetition helps you get a clean take and gives you options. It's also useful to announce the number of each sound before recording it, so you can identify recordings later without guesswork. Save each recording as a separate wav file (right-click > **Save Wav File...**), using the number as part of the filename (e.g. `01-voice-short-high.wav`) so you can match files back to your grid later.

The goal is 48 sounds across as many of the 96 categories as you can fill. Don't rush.

*Note: Certain categories are genuinely hard to fill, fading Sones especially. A Sone that slowly diminishes to nothing requires either a naturally decaying sound or careful volume automation. Leave blanks rather than force an uncomfortable fit. The blank squares are themselves informative: they show you where to listen harder on future walks.*

---

## Technique B — Input Gain and Mic Placement

Dwyer spent considerable time on microphone placement because on a tape recorder, once a recording is made at the wrong level or from the wrong distance, there's no going back. Digital recording is slightly more forgiving (you can normalise a quiet recording in a DAW, for instance) but Dwyer's underlying point still holds: the decisions you make at the moment of recording shape the character of the sound in ways that can't always be undone after the fact. Placement and gain are creative tools, not just technical housekeeping.

There are four basic placement positions worth knowing:

**Close** (up to about 20 cm): the microphone is very near the sound source. You hear the detail, the breath, the texture. Normally used for very quiet sounds that would otherwise get lost; loud sounds can overload the input at this distance.

**Normal** (roughly 60 cm to 4 metres): a conversational distance. The sound is balanced. This is the default.

**Reverb**: the microphone is positioned to catch the room's acoustic response as much as the direct sound, in a corridor, a bathroom, or a large empty room. Avoid carpeted rooms for this effect. The reverb is physically real and therefore has a particular character no plugin can quite replicate.

A possible substitute for reverb conditions, suggested by Dwyer, is placing the microphone inside a piano with the sustain pedal held down. The strings pick up and prolong sounds to some extent. Results depend on the type of sound and microphone, but it's a technique worth trying if you have a piano available.

**Muffled**: something is placed between the sound source and the microphone, a coat, several thick cloths, or try placing the microphone inside a closed drawer or wardrobe. The high frequencies are absorbed and the result is a dark, underwater character.

When Dwyer talks about volume, he means the final volume of the recording, not the volume of the sound source. It is your job to balance three factors: the volume of the source, the gain of the signal chain, and the microphone placement. All three interact, and adjusting any one of them changes the result.

In VCV Rack, gain control between the Audio module and Simpliciter is done with additional modules. To reduce the signal level, insert a Fundamental VCA and drag its interactive VU meter to set the level. To amplify a weak signal, use a **Befaco A\*B+C**, which can boost gain up to 2x. The Audio module itself has no gain control.

To monitor levels, you can patch the signal through a Fundamental Scope module running in parallel, which gives you a real-time visual of the waveform. But don't rely on meters and scopes alone. Use headphones. The most important monitor is your ear: does the recording *sound* right? A meter can tell you a signal is present, but only listening can tell you whether it's the recording you wanted.

::: {.creative-option}
**Room Reverb**: Dwyer notes that recording in a corridor or bathroom gives reverb you can't easily manufacture. That's true, and if you have a bathroom available, use it. But you can also manufacture it digitally: patch Simpliciter's OUT through a reverb module — Valley Plateau, Befaco Spring Reverb, or any of the reverb effects from the Surge XT plugin are all good choices and route that processed signal into a second Simpliciter's IN, then record the wet signal. The reverb becomes *baked in* to the new recording, exactly as it would on tape. Dwyer would have recognised this two-machine technique immediately. The difference is that your second "tape machine" costs nothing and takes up no desk space.
:::

### Exercise 2

*(40 seconds)*

Record the following sounds in sequence, saving each as a separate wav file:

- Close, soft then loud: breathing
- Close, soft then loud: hitting a box
- Reverb, soft then loud: clapping
- Reverb, soft then loud: singing
- Muffled: piano (loud), drum (medium), triangle (soft)

Play them back in sequence. The differences in character should be striking even across similar source materials.

### Exercise 3

*(40 seconds)*

Make a piece in two sections without a break:

- Section 1: soft and muffled, tremolo
- Section 2: loud and reverb, long

### Exercise 4

*(40 seconds)*

Make a similar piece in two sections:

- Section 1: loud and muffled, short
- Section 2: soft and reverb, fading

### Exercise 5

*(80 seconds)*

Set up a long or tremolo sound running continuously — an alarm clock, a sustained voice, a fan. Route it through a Fundamental VCA and automate the VCA level using CV-MAP or a slow LFO. Record the result into a second Simpliciter. Work through the following sequence: crescendo from silence to maximum in 10 seconds, then diminuendo back in 10 seconds; repeat in 8 seconds each way, then 5, then 3, then 1, then move the control as fast as you can. Listen to the result.

*Note: The distinction between altering the recording itself and altering its playback level is important and comes up repeatedly in this book. Technique B is about recording level; what you're doing in Exercise 5 is playback shaping. Both matter, and they're different tools.*

*The purpose of Exercises 2–5 is the development of an appreciation for contrast. Contrast is the basis of all musical composition. Begin now deciding which kinds of contrast appeal to you.*

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
