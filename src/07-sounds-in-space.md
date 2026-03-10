# Sounds in Space

Up to now we have treated sound largely as a single stream: audio goes in, gets processed, comes out. But music heard through two speakers — or two headphones — occupies space. A sound can come from the left, or the right, or from both at once, or from somewhere between. A sound can feel close or distant, dry or immersed in room. These are spatial properties, and composing with them is a distinct and important skill.

Dwyer dedicated a chapter to what he called "sounds in space" — the techniques for positioning audio across a stereo field. His techniques (labelled H through L in the original) move from simple separation to complex panning to echo, and each one builds on the last. This chapter follows the same sequence, translated into VCV Rack.

The central module for all of these techniques remains the Simpliciter, but now we are routing its output in new ways — to the left speaker, the right speaker, or some position between — and we are beginning to treat the stereo field as a compositional dimension in its own right.

## Technique H — Two-Channel (Separate)

The simplest spatial technique is also the most direct: one sound in the left speaker, a different sound in the right speaker. They share the same time but occupy different points in space. Dwyer called this "separate" two-channel, meaning the two channels carry completely independent content.

To set this up in VCV Rack:

1. Load a recording into **Simpliciter 1**. Connect its **OUT L** to **Audio OUT Left (IN 1)**.
2. Load a different recording into **Simpliciter 2**. Connect its **OUT L** to **Audio OUT Right (IN 2)**.
3. Trigger both Simpliciters.

Left speaker plays sound A. Right speaker plays sound B. They are entirely independent — nothing shared, nothing combined.

![Technique H — two Simpliciters to stereo output](images/screenshots/technique-h-two-channel-separate.png)

![Signal flow: Simpliciter L + Simpliciter R → Stereo Out](images/diagrams/technique-h.svg)

The musical relationships between the two channels are the same ones Dwyer described. **Antiphonal** — one sound in the left, then the other in the right, in alternation, like a conversation across a room. **Complementary** — sounds that are different in character but feel as though they belong together: a sustained tone in one speaker, a rhythmic element in the other. **Call-and-response** — a musical question in one channel answered by something in the other.

What you are composing, in effect, is a relationship between two points in space. The listener's attention moves between them, or holds both simultaneously, or is drawn to one and then the other. This is quite different from monophonic music, and the spatial dimension adds an element that has no equivalent in single-speaker playback.

*Note: Listen to this technique through headphones as well as speakers. Through speakers, the two channels blend slightly because each ear hears both speakers to some degree. Through headphones, left and right are completely isolated, which can feel more dramatic or more disjunct depending on the material.*


### Exercise 29

*(4 minutes)*

Record two contrasting sounds — one percussive, one sustained, for instance, or one high-pitched and one low. Load them into Technique H's configuration (separate channels). Let both play simultaneously. Describe to yourself what you hear: do they feel like they belong together? Do they feel in conflict? Adjust the levels of each one to see how balance affects the relationship.

### Exercise 30

*(4 minutes)*

Build an antiphonal sequence. In Simpliciter 1 (left), load a short sound. In Simpliciter 2 (right), load a different short sound. Trigger them alternately using a sequencer or by hand, so they answer each other in a left-right dialogue. Try different spacings between the triggers: rapid alternation, slow alternation, irregular alternation.

### Exercise 31

*(5 minutes)*

Compose a short piece of thirty to sixty seconds using only Technique H. You may use any two recordings and any balance of levels. The only constraint: left and right must remain completely separate — no panning, no mixing of channels. What compositional decisions does this constraint force you to make?

---

## Technique I — Floodsound

Where Technique H separates the channels as much as possible, Technique I does the opposite: it sends the same sound to both speakers simultaneously. Dwyer called this "floodsound" — the sound fills the room from both directions at once, washing over the listener rather than coming from a specific point.

The effect is immersive in a way that a single-channel or separated signal is not. When the same audio arrives at both ears simultaneously from both speakers, the brain cannot localise it to a point in space. Instead, it appears to come from everywhere, or from inside the head (in headphones). This is a powerful and sometimes overwhelming spatial effect.

In VCV Rack, floodsound is simply a matter of sending one Simpliciter's output to both channels:

1. Connect **Simpliciter OUT L** to **Audio OUT IN 1** (left).
2. Connect **Simpliciter OUT L** to **Audio OUT IN 2** (right) — the same jack to both destinations.

Alternatively, use a **VCV Split** module to duplicate the mono signal into two identical copies before routing them to the left and right outputs.

Floodsound works particularly well with dense, complex textures: a heavily layered superimposition (from Technique E), a rich reverberant sound, a sustained drone with internal movement. These benefit from the immersive quality that two-channel separation provides, because they are not sounds that need localisation — they are sounds that need to fill space.


### Exercise 32

*(3 minutes)*

Take any recording you have made in the earlier chapters. Route it as floodsound (both channels). Listen through headphones. Now route it as a single mono channel (left only, or right only). Compare the two. What does the floodsound version add? What, if anything, does it take away?

### Exercise 33

*(4 minutes)*

Combine Techniques H and I: use Simpliciter 1 as floodsound (both channels) and Simpliciter 2 as a Technique H separate signal in one channel only. You now have a layered spatial composition: one sound everywhere, another sound positioned to one side. Adjust levels so both sounds are audible. Notice how the floodsound element acts as a kind of ground, while the separated element acts as a figure.

---

## Technique J — Two-Channel Combined (Panning)

Panning is the placement of a sound at a specific position between fully left and fully right. A pan position of hard left sends the signal only to the left speaker; hard right sends it only to the right; centre sends it equally to both. Everything between these extremes is some proportion of left and right.

Static panning places a sound at a fixed position and leaves it there — a useful tool for organising a mix spatially, giving each layer its own address in the stereo field. Dynamic panning moves the position over time, and it is here that panning becomes a genuine compositional technique rather than a placement decision.

In VCV Rack, use a dedicated panning module. The **VCV Pan** module (in the Fundamental pack) is simple and effective: a single audio input, a pan control, and stereo outputs. To automate the pan position, connect a CV source to the **PAN CV** input and use the **CV attenuator** to control the depth of the modulation.

The most common CV source for panning is a **Low Frequency Oscillator (LFO)** — a module that produces a continuously cycling waveform at a rate below the audible range. Connect an LFO set to a triangle or sine wave to the Pan CV input:

- **Slow LFO** (cycle time of 5–30 seconds): the sound moves gradually across the stereo field, creating a slow sweep that the listener may or may not consciously notice but will feel as spatial motion.
- **Medium LFO** (cycle time of 1–5 seconds): a noticeable, rhythmic movement that draws attention to the pan as an element in itself.
- **Fast LFO** (cycle time below 1 second): as the movement speeds up, it stops sounding like panning and begins to sound like tremolo — a rapid amplitude fluctuation caused by the sound moving in and out of each speaker faster than the ear can track individual positions.

![Technique J — Pan module with LFO CV](images/screenshots/technique-j-panning.png)

![Signal flow: Simpliciter → Pan → Stereo Out, LFO → Pan CV](images/diagrams/technique-j.svg)

The transition from spatial panning to tremolo as LFO speed increases is not a mistake or a workaround — it is a genuinely interesting perceptual phenomenon. Slow movement is spatial. Fast movement is temporal. At the boundary between the two, you hear something that is neither quite one nor the other.

::: {.creative-option}
**Spring Reverb for Spatial Depth**: A pan module positions a sound left or right, but panning alone does not give a sense of distance or room. Adding a reverb module after the pan module introduces that third spatial dimension — sounds that are panned feel like they are inside a space rather than just placed at a point on a line. **Valley Plateau** (based on the Griesinger reverb algorithm) and **Befaco Spring Reverb** are both free and excellent choices. Patch: Simpliciter → Pan → Reverb → Audio OUT. The reverb's wet/dry mix controls how much of the spatial effect you hear: a small amount of reverb (10–20% wet) adds depth without making the sound feel distant; a larger amount (40–60% wet) pushes the sound back into the room.
:::


### Exercise 34

*(3 minutes)*

Patch Simpliciter → VCV Pan → Audio OUT. Set the pan to hard left and trigger the sound. Move the pan slowly to hard right while it plays. Now return it to centre. This is manual panning — you are the automation. Notice how much the pan position affects the perceived character of the sound.

### Exercise 35

*(5 minutes)*

Replace manual pan control with an LFO. Connect an LFO (sine wave, slow rate — try a cycle of about 8 seconds) to the Pan CV input. Adjust the CV attenuator until the pan moves from roughly left-centre to right-centre. Let it run for thirty seconds. Now double the LFO rate. Double it again. At what speed does the movement stop sounding spatial and start sounding timbral?

---

## Technique K — Floodsound Plus

Technique K combines Technique I (floodsound — one sound in both speakers) with Technique J (a moving, panned sound). The result is a spatial texture with two layers: a stable, immersive background and a mobile, directional foreground.

The patch is a direct combination of what you already know:

1. **Simpliciter 1** (floodsound): route its output to both Audio OUT channels at a moderate level. This is your background layer — it establishes presence and depth.
2. **Simpliciter 2** (panned): route its output through a Pan module driven by an LFO, then to Audio OUT. This is your foreground — it moves.

The key is the balance between the two layers. The floodsound background should be audible but not dominant; it provides context. The panned layer should be clearly defined; it provides movement and direction. A common mistake is to set the floodsound too loud, which drowns the panned layer and loses the spatial contrast that makes the technique work.

Try different relationships between the two layers:

- The floodsound and panned layer use the same recording (one static, one moving).
- They use contrasting recordings (one dense, one sparse; one sustained, one rhythmic).
- The panned layer is set to reverse playback, moving backward through the same material the floodsound plays forward.


### Exercise 36

*(5 minutes)*

Build the Technique K patch as described. Use a dense, sustained sound for the floodsound layer and a shorter, more defined sound for the panned layer. Let both run simultaneously for sixty seconds. Notice whether the piece feels static (the floodsound dominates) or dynamic (the panning is the focus). Adjust the balance accordingly.

### Exercise 37

*(5 minutes)*

Reverse the character assignment: use a short, rhythmic sound as the floodsound and a sustained, slowly evolving sound as the panned layer. How does this change the feel of the piece? Does the rhythmic floodsound become overpowering or does it act as a kind of invisible pulse?

---

## Technique L — Echo

Echo is the repetition of a sound after a delay. In natural acoustics, it is the result of a sound bouncing off a distant surface and returning to the listener. In music, echo has been exploited as an effect for centuries — by placing musicians in separate gallery positions in Venetian cathedrals, by constructing amphitheatres with reflective back walls, and, from the 1950s onward, by electronic means.

Dwyer described tape echo in its most literal form: a physical loop of tape wound between two tape heads, one for recording and one for playback. The distance between the heads, combined with the speed of the tape, determined the delay time. To get a long delay, you used a longer loop; to get a short delay, a shorter one. Feedback — repeating echoes that grow quieter with each repeat — was achieved by routing some of the playback signal back into the recording head.

In VCV Rack, use a dedicated delay module. **Chronoblob2** (by Alright Devices) is free, well-designed, and does everything you need. The key parameters:

**Time** — the delay between the original sound and its first repeat. Measured in milliseconds or as a fraction of a beat (if synced to a clock). A delay of around 300–500ms gives a clear, distinct echo. Very short delays (under 30ms) approach comb filtering rather than distinct echoes.

**Feedback** — the proportion of the delayed signal fed back into the delay input, producing subsequent repeats. At low feedback (below 30%), you get a single discrete echo. At medium feedback (50–70%), you get several repeats, each quieter than the last. At high feedback (above 85%), the echoes sustain for a very long time and can become a drone in themselves. At 100% feedback, the echoes never decay — use this with care, as the signal will continue indefinitely.

**Wet/Dry** — the balance between the original (dry) signal and the delayed (wet) signal. In most musical contexts, a low-to-moderate wet level (20–40%) gives you a sense of echo without the dry signal being buried.

![Technique L — Echo with Chronoblob2](images/screenshots/technique-l-echo.png)

![Signal flow: Simpliciter → Chronoblob2 → Output](images/diagrams/technique-l.svg)

### Echo and Tempo

One of the musical uses of echo is rhythmic: when the delay time is set to a musical interval (a beat, a half-beat, a dotted quarter), the echoes align with the pulse of the music, reinforcing rather than obscuring the rhythm. To calculate the delay time in milliseconds from a tempo in beats per minute:

> Delay time (ms) = 60,000 ÷ BPM

At 120 BPM, one beat = 500ms. A half-beat = 250ms. A dotted quarter beat = 375ms.

If you have a clock module in your patch (such as **VCV Clock** or **Impromptu Clocked**), Chronoblob2 can sync its delay time directly to the clock via a **CLK** input, removing the need to calculate manually.

::: {.creative-option}
**Tape Echo Simulation**: Real tape echo units — the Binson Echorec, the Watkins Copycat, the Roland Space Echo — had a characteristic warmth and darkness that came from a specific physical property: the magnetic tape in the feedback loop degraded slightly on each pass. High frequencies were absorbed; the signal was subtly compressed; a gentle saturation accumulated with each repeat. The later echoes sounded noticeably darker and warmer than the original, as if the sound were being absorbed by distance. To replicate this in VCV, place a **NYSTHI Console** (set to light saturation) and a gentle low-pass filter inside Chronoblob2's feedback path. Chronoblob2 has dedicated feedback send and return jacks for exactly this purpose. With each repeat, the signal passes through the Console and the filter, growing progressively warmer and darker. This is not merely an aesthetic choice — it is the mechanism by which the original hardware actually worked. The effect transforms a clean digital delay into something that sounds genuinely analogue, genuinely aged.
:::


### Exercise 38

*(3 minutes)*

Patch Simpliciter → Chronoblob2 → Audio OUT. Set Feedback to around 40%, Wet/Dry to 30%, and Time to 400ms. Trigger a short percussive sound. Listen to the echoes decay. Now increase Feedback to 70% and trigger the same sound. Compare the two decay profiles.

### Exercise 39

*(3 minutes)*

Set Chronoblob2's Time to a musically related value for a tempo of your choosing. (If you are working at 90 BPM, one beat = 667ms.) Trigger a rhythmic sound repeatedly at that tempo. Notice how the echoes reinforce or conflict with the rhythm depending on how precisely the delay time is aligned.

### Exercise 40

*(4 minutes)*

Use echo as a spatial technique rather than a rhythmic one. Set a very long delay time (1,500ms or more) and low feedback (20%). Trigger a single sustained sound. The echo appears well after the original, giving the impression of a sound reflecting from a distant wall. Combine with the floodsound technique: the original sound in both channels, the echo appearing only in one.

### Exercise 41

*(4 minutes)*

Build the tape echo simulation described in the Creative Option above. Patch the Console and a low-pass filter into Chronoblob2's feedback loop. Set Feedback to 60–70%. Trigger a short melodic or tonal sound and listen to the warmth of the decay. Gradually increase the Console's saturation until the later echoes are clearly darker than the first. Note how this changes your perception of the space the echo seems to occupy.

### Exercise 42

*(5 minutes)*

Combine Technique L (echo) with Technique J (panning). Route Simpliciter through a Pan module (driven by a slow LFO) and then into Chronoblob2. The panned sound's echoes will appear at the pan position the signal occupied when it was delayed, which may or may not match the current position — creating a spatial trail effect where echoes seem to come from slightly different positions than the original sound.

### Exercise 43

*(5 minutes)*

Use echo as the primary compositional material, not just as an effect. Record a single short sound — no more than two seconds long. Use a long feedback time (80–85%) to sustain the echoes for fifteen to twenty seconds. Now use Simpliciter's START and END knobs to select a very small section of the recording as the "trigger" — just the attack portion, stripped of its natural decay. Let the echo module supply the decay artificially. The result is a sound that begins with the character of your original recording and decays with the character of the echo algorithm. These are two different kinds of time: the time of the original sound, and the time imposed on it by the space.

### Exercise 44

*(6 minutes)*

Compose a complete short piece — sixty to ninety seconds — using any combination of Techniques H through L. You may use as many Simpliciters and supporting modules as you need. The requirement is that you use the stereo field deliberately: at least one spatial decision (panning, separation, echo, or floodsound) should be a considered compositional choice, not a default. Listen back and ask yourself whether the spatial dimension adds something that a mono version would not have.
