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

Simpliciter's **VARISPEED** knob controls the playback rate. The neutral position (1x, normal speed) is at roughly the 3 o'clock position, not at the centre. Turn it clockwise and the playback accelerates: the sound gets shorter and its pitch rises. Turn it anticlockwise and playback slows: the sound stretches out and its pitch drops. The relationship between speed and pitch is exactly what you'd expect from a tape recorder running faster or slower: they are inseparable, at least with this technique. (Granular pitch-shifting, which separates the two, comes later.)

The **V/Oct CV input** on Simpliciter extends this considerably. If you patch a CV voltage to this input, you can control the playback pitch in semitone steps, exactly as a keyboard CV would control a synthesiser oscillator. Patch a sequencer to this input and you can play your recording as if it were a note in a scale. Patch an LFO to it and you get a vibrato-like pitch wobble. The recording becomes an instrument.

Dwyer listed six specific consequences of halving or doubling playback speed on a tape recorder. Here they are, mapped to Simpliciter:

1. **Pitch drops/rises by an octave.** Halving speed drops pitch by an octave (twelve semitones); doubling raises it by an octave.
2. **Duration doubles/halves.** A two-second recording at half speed takes four seconds to play back.
3. **Envelope characteristics change.** A sharp attack at normal speed becomes a slow swell at half speed. A slow fade becomes a rapid cutoff at double speed.
4. **Frequency content shifts.** High-frequency detail (consonants in speech, the bite of a bow on strings) moves down into the audible midrange at half speed, revealing textures that were previously too fast to hear clearly.
5. **Noise floor changes character.** The hiss and rumble of any recording shifts with the speed. At half speed, high-frequency hiss drops to midrange hiss. Not always desirable, but worth knowing.
6. **Rhythmic patterns stretch or compress.** Any internal rhythm in the recording, a stutter, a tremolo, a repeated attack, becomes slower or faster, changing its relationship to anything else in the piece.

These six consequences are not problems to be solved. They are materials to be used.

A note on terminology: use the word *speed* to mean the playback rate of the sampler, and the word *tempo* to mean the rate of the musical events recorded on it. The two are related but distinct. When you halve the speed, the tempo slows too — but it is useful to keep the concepts separate, especially when working with rhythmic material.

Speed change is the most important technique the virtual tape composer possesses. Use it freely to create new sounds and to render familiar ones unrecognisable. The effect can be startling: to hear a child's descant recorder transformed into a deep, powerful note like an organ pedal, shifted four or five octaves lower, is an awe-inspiring experience. In most situations a change of one octave is quite sufficient for good results.

::: {.creative-option}
**Wow and Tape Inertia**: On physical tape recorders, slight mechanical irregularities in the transport caused slow pitch wavering (wow), and the mass of the tape reels introduced inertia — the machine took time to reach full speed and to stop. Simpliciter plays back at a perfectly stable rate with instant response, so these characteristics are absent by default. If you want them, place the companion module **NYSTHI TapeControl** directly next to Simpliciter on your rack — it adds wow and tape inertia controls. Subtle settings can add an organic warmth; extreme settings produce the seasick pitch drift of a struggling tape machine.
:::

![Technique C — Speed Change patch with CV control](images/screenshots/technique-c-speed-change.png)

![Signal flow: Speed CV → Simpliciter SPEED](images/diagrams/technique-c.svg)

### Exercise 6

Play back your recordings from Exercise 1 at half speed, then at double speed. Listen critically and decide whether each sound is interesting or not particularly useful to you. Write your comments in the blank squares of your grid opposite each entry. When listening, you may find it difficult to identify some sound sources immediately: those are likely to prove the most useful in the future.

### Exercise 7

*(5 seconds)*

Make an ascending scale of six different pitches, all produced from hands and feet Sones: claps, stamps, finger snaps, slaps. Use Simpliciter's VARISPEED to arrange them in ascending order. You are not trying to produce a scale in tune with a piano, merely six different pitches from low to high.

### Exercise 8

*(40 seconds)*

Compose a two-section piece:

- Section 1: long Tones and fading Mistones (all soft, low, slow)
- Section 2: short Sones and Pseudotones (all loud, fast, high)

Both sections must use sounds recorded at two different VARISPEED settings. Allow for this when recording: the final playback speed will affect duration, pitch, and character.

*The purpose of Exercises 7 and 8 is the gaining of experience in basic technique. If you are not satisfied that your results fit the given conditions, keep trying.*

---

## Technique D — Reversal

To play a recording in reverse in Simpliciter, turn the **VARISPEED** knob further counterclockwise, past the zero point. The playback direction reverses. That's all it takes.

What that simple reversal does to sound, however, is remarkable. The attack and decay of every sound are swapped. A sound that began with a sharp percussive strike and decayed slowly now begins with a slow swell from nothing and ends with a sudden cutoff, the opposite of what the ear expects. A piano note, which has an immediate attack and a long decay, reversed sounds uncannily like an organ or a bowed string. A word spoken forwards becomes a syllable that seems to arrive from underwater. A door slamming reversed sounds like a door opening very quickly from far away.

Dwyer was enthusiastic about reversal because it could transform utterly familiar sounds into the unfamiliar. He recounted a rumour about a bagpipe LP that was supposedly pressed in reverse by the manufacturer and returned by nobody, the reasoning being that bagpipe tones have such a continuous, steady character that reversing them changes almost nothing. Whether the story is true hardly matters; it perfectly illustrates the principle: reversal is most dramatic on sounds with a clear difference between their beginning and their end.

The microwave you recorded an hour ago becomes, reversed, something you have never heard before.

In Simpliciter, reversal is controlled by the VARISPEED knob. If you want to switch direction with a CV signal in real time, use the companion module NYSTHI TapeControl, which accepts a gate input to toggle playback direction. This opens up possibilities for alternating forward and backward playback mid-phrase. We'll return to that in a later chapter.

![Technique D — Reversal](images/screenshots/technique-d-reversal.png)

::: {.creative-option}
**Delay/Echo as creative reversal pair**: Try patching reversed playback through a short delay module — the VCV Delay from the Fundamental pack works well. The reversed sound plus its echo creates an uncanny shimmer: you hear the sound arriving before its apparent source, giving the whole thing a ghostly, pre-echo quality. This maps most directly to Technique L (Echo), which we cover properly later, but the combination of reversal and a short delay is one of those discoveries worth making early.
:::

### Exercise 9

*(1 minute)*

Record and reverse as many of the following as you can find: piano, glockenspiel, cymbal, triangle, drum, whistling, recorder (or any melodic instrument), foot shuffling, stamping, hand-clapping, speech. Use a separate Simpliciter instance for each sound. Listen carefully and make written notes about how each sound has changed from the original, and how the sounds relate to each other in their reversed form.

### Exercise 10

*(15 seconds)*

Take any six sounds from Exercise 9 and arrange them in order of descending pitch. Record this sequence into a new Simpliciter, then make an identical recording in reverse. The result is a continuous piece with a mirror structure: the sounds descend in pitch, then ascend again, with their attack and decay characteristics reversed in the second half.

*This technique may prove useful in future. It is an intellectual device which may give pleasure to a listener who perceives it — but only if the sounds remain recognisable in reverse. Try your recording on a listener and ask them what is happening.*

### Exercise 11

*(20 seconds)*

Using a triangle or cymbal (or any metallic, slow-fading sound), produce six sounds by combining three VARISPEED settings with both forward and reverse directions. Arrange these into an interesting rhythmic pattern and repeat it four times, as nearly identical as possible.

*This is difficult to bring off convincingly. Hint: do not wait for each sound to die away completely, or the notes will be too long for a discernible rhythmic pattern.*

### Exercise 12

*(1 minute 20 seconds)*

Create a gradual climax using reversed playback only. Use any sounds you like. Move progressively from:

- muffled → normal placement
- low → high pitch
- soft → loud
- slow → fast

You will need to record the material in reverse order (starting at the loudest, brightest, fastest point) and then reverse the whole thing for the final result.

### Exercise 13

*(1 minute)*

Create a piece in two sections: a gradual climax of Mistones (fading and long, using both forward and reversed playback), followed by a gradual anticlimax of Pseudotones (using two VARISPEED settings, all short sounds).

*In the anticlimax section you may change the speed more than once, but ensure that in the final result there is a gradual slowing down, not sudden jumps between speeds. Build the first section to a fairly loud volume so the contrast with the second section is clear.*

*Note: The combination of reversal and speed change is, historically, where a great deal of early musique concrète began. Pierre Schaeffer's études from 1948, often cited as the first musique concrète compositions, were built almost entirely from exactly these two techniques. You are, with Exercises 6 through 13, working in a tradition that is older than most popular music you know.*
