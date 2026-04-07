# Further Techniques

## Technique E — Superimposition

Superimposition means combining two or more recordings so that they play simultaneously, their sounds layered into a single composite texture. In Dwyer's day this was done by sound-on-sound recording: you played back a tape while simultaneously recording new material onto it, so that both sounds were captured together. The process worked, but every generation of recording added noise and reduced clarity. Layer three or four times and the quality degraded noticeably. This was sometimes a creative limitation in itself, since the murkiness of a heavily layered tape had its own aesthetic character.

In VCV Rack there is no generational loss. Digital audio is copied and combined perfectly, regardless of how many layers you add. This is liberating, but it also removes a natural stopping point. With tape you eventually had to stop layering because the quality was gone. With VCV you can keep going, and the temptation to keep adding is real and not always helpful. We will return to this point.

### Building the Superimposition Patch

The superimposition setup is straightforward. You need two Simpliciter modules, a mixer, and your Audio OUT module.

1. Load your first recorded sample into **Simpliciter 1**. (Open the module's right-click menu and select your .wav file, or record directly into it.)
2. Load your second recorded sample into **Simpliciter 2**.
3. Add a **VCV Mixer** module (from the VCV Fundamental pack).
4. Connect **Simpliciter 1's OUT L** to **Mixer Channel 1 Input**.
5. Connect **Simpliciter 2's OUT L** to **Mixer Channel 2 Input**.
6. Connect the **Mixer's Main Output** to **Audio OUT**.

Both Simpliciters now play simultaneously through the mixer. You can adjust the level of each one independently using the mixer channel faders.

![Technique E — two Simpliciters through a mixer](images/screenshots/technique-e-superimposition.png)

![Signal flow: Simpliciter × 2 → Mixer → Output](images/diagrams/technique-e.svg)

The mixer gives you control over the balance between the two sounds. A sound that feels overwhelming at equal volume might be exactly right when pulled back by 6 decibels. A thin, high-frequency texture might need to be pushed up to be audible beneath a dense low-frequency layer. Spend time with the faders: the balance between layers is a compositional decision, not just a technical one.

### Playing with Speed and Pitch

The technique becomes musically interesting when you play the two recordings at different speeds. Recall from Chapter 3 that changing Simpliciter's VARISPEED knob raises or lowers the pitch. Set Simpliciter 1 to normal speed (roughly 3 o'clock) and Simpliciter 2 to half speed. Now you have two versions of the same or different sounds at an octave interval. Try three-quarter speed on one and one-and-a-half on the other. Try one forward and one reversed.

The relationship between the pitches of your layered sounds matters enormously. Two sounds that clash harmonically will create tension. Two sounds that complement each other will merge into something new. Neither outcome is wrong, but you should choose deliberately rather than accidentally.

### Imposing Your Own Density Ceiling

Because VCV doesn't degrade with layering, you need to decide for yourself when to stop adding material. Two practical approaches:

**Approach 1: set a rule before you start.** Decide that this piece uses a maximum of three layers, or four, or two. Having a rule forces creative decisions: if you want to add a fourth layer, something else must be removed first.

**Approach 2: use gain staging and saturation.** This reintroduces a kind of artificial density ceiling that behaves like tape. As you add more material, the output becomes warmer and more compressed rather than simply louder and more cluttered.

::: {.creative-option}
**Tape Saturation for Superimposition**: When layering multiple Simpliciters, run the mixer output through **ChowDSP ChowTape** before the final Audio OUT. Push the input gain just into saturation and you will hear the sound become denser and slightly warmer as the levels rise. This creates something like the "full tape" feeling: the mix sounds cohesive and dense rather than just loud and busy. The saturation acts as a natural boundary; once everything sounds saturated, you've reached your ceiling. At that point, the only way forward is subtraction.
:::


### Exercise 14

*(2 minutes)*

Record two separate short sounds — any two sounds. Load them into Simpliciter 1 and Simpliciter 2. Set both to normal speed and play them together. Adjust the mixer balance until you find a proportion that interests you. Make a note of what you discover: does one sound dominate the other? Do they merge into something new, or do they remain distinct?

### Exercise 15

*(3 minutes)*

Using the same two recordings from Exercise 14, set Simpliciter 2 to half speed. Play both together. Now try three-quarter speed on Simpliciter 2. Try double speed. What pitch relationships arise? Which ones feel complementary and which feel dissonant?

### Exercise 16

*(3 minutes)*

Set Simpliciter 2 to reverse playback. Play both sounds together — one forward, one reversed. This is one of the classic superimposition effects in musique concrète: the reversed version provides a kind of "shadow" of the forward sound. Adjust levels.

### Exercise 17

*(4 minutes)*

Record three short sounds. Add a third Simpliciter and a third mixer channel. Layer all three at normal speed. Find a balance. Then deliberately push the NYSTHI Console (if installed) into light saturation. Listen to how the density changes. Compare the saturated version with the clean version.

### Exercise 18

*(3 minutes)*

Superimpose two very different types of sound — for example, a percussive impact and a sustained drone. Notice how the percussive element cuts through the sustained one. Try reversing which is louder. Try running the percussive sound through a slight pitch-down (0.75 speed) to give it a heavier character.

### Exercise 19

*(4 minutes)*

Make a texture by superimposing a sound with itself at three different speeds: normal, three-quarter, and one-quarter. Three instances of the same recording at three different pitches. Balance the levels carefully. Notice how the identity of the original sound becomes harder to perceive as the layers accumulate.

### Exercise 20

*(3 minutes)*

Superimpose a forward version of a sound with its own reversed version at the same speed. This creates a near-palindrome: both versions reach their midpoint simultaneously, then diverge. The effect is strange and unsettling in ways that neither version alone produces.

### Exercise 21

*(5 minutes)*

Build a layered texture from five sounds. Do not use more than five. Set a rule: the total duration of the piece is thirty seconds. Work backward from that constraint — what do you need to establish in the first ten seconds? What changes in the middle? How does it end?

### Exercise 22

*(5 minutes)*

Return to Exercise 21 and deliberately subtract material rather than adding it. Start with all five layers playing, and over thirty seconds remove them one by one until you are left with a single sound. Compare this version with the additive version from Exercise 21. Which one holds your attention more? Why?

---

## Technique F — Loops

A loop is a section of audio that repeats continuously. In Dwyer's original practice, loops were physical: a piece of tape was spliced end-to-end to form a closed ring, then threaded around the tape head so it played the same passage over and over. The length of the tape ring determined the length of the loop. Long loops filled the room; short loops created rapid, almost mechanical ostinatos.

In Simpliciter, the loop function is built in. Press the **LOOP** button on the module and it will play your recording in a continuous loop. You define the loop region using the **START** and **END** knobs, which set the beginning and ending points of the loop within the recorded audio. Everything outside that region is ignored.

### Loop Modes

Simpliciter offers three loop modes, selected by right-clicking the module:

**Forward loop** — plays from START to END, then jumps back to START and repeats. The standard loop mode.

**Ping-pong loop** — plays from START to END (forward), then from END to START (backward), alternating. This creates a characteristic back-and-forth motion that can feel organic or mechanical depending on the material.

**One-shot** — plays from START to END once and stops. Useful when you want a defined region of a recording to play on demand, without repeating.

### Musical Possibilities

Loops enable three distinct compositional strategies:

**Ostinatos** — short, repeating rhythmic or melodic cells. If your recording contains a percussive sound, loop a small section around that hit to create a rhythmic pulse. Set the loop region tightly — just the attack and a short tail — and you have a drum machine made from any sound.

**Drones** — a sustained tone or texture looped over a long region. If your sound has a relatively stable middle section (after the attack, before the release), loop that section alone. The START and END knobs let you isolate exactly that portion.

**Rhythmic cells** — looped phrases of two to four seconds that establish a pattern without becoming mechanical. The difference between a cell and an ostinato is largely one of length and complexity — an ostinato is shorter and simpler, a cell is longer and more varied.

### Seamless Crossfade Loops

The challenge with loops is the join — the point where the END snaps back to START. If the audio doesn't match cleanly at that join, you'll hear a click or pop. Simpliciter addresses this with the **FADE** parameter, which applies a short crossfade at the loop boundary: the audio at the end fades out while the audio at the beginning fades in, blending the two points together. For smooth, seamless loops, set FADE to a small value (try 5–10 milliseconds to start) and listen carefully at the join. Increase FADE until the click disappears. If you increase it too far, you'll start to hear a rhythmic pulse at the join itself as the crossfade becomes audible.

![Technique F — Loop mode settings](images/screenshots/technique-f-loops.png)

![Signal flow: Simpliciter LOOP → endless playback](images/diagrams/technique-f.svg)

*Note: The crossfade works best when the audio at both loop points has similar amplitude. A loop that starts loud and ends quiet (or vice versa) will never be completely seamless regardless of the FADE setting. Choose your loop points where the audio level is roughly matched.*

::: {.creative-option}
**Echo/Feedback Loop**: The classic tape loop — a physical ring of tape passing repeatedly through the record head — created a kind of feedback where each pass of the tape added new material to an accumulating record. In VCV Rack, you can approximate this in two ways. The simpler method: add a delay module (Chronoblob2 is free and excellent) after your Simpliciter output, set a long delay time, and push the **Feedback** knob up. Each repeat of the sound recedes slightly in level; the delay time determines how long between repeats. The more complex method: use Simpliciter itself in its overdub mode, routing audio back into the module's input while it loops. Each pass adds the new audio to the existing loop, and the loop accumulates material over time. Handle this second approach with care — without some level reduction in the feedback path, the loop will grow louder with every pass and eventually distort or clip. A gain reduction of around 80% per pass (about −2 dB) keeps things under control.
:::


### Exercise 23

*(3 minutes)*

Record a sound of approximately ten seconds. Enable LOOP mode in Simpliciter. Set START to 0 and END to maximum. Let it loop. Now slowly adjust the START knob rightward, narrowing the loop from the beginning. Notice how the character of the loop changes as shorter and shorter sections repeat.

### Exercise 24

*(4 minutes)*

Find a section of your recording that has a relatively stable middle — neither beginning nor ending, just the body of the sound. Set START and END to isolate only this section. Adjust FADE until the join is smooth. You now have a drone. Let it play for at least sixty seconds. Listen to whether it remains interesting over time.

### Exercise 25

*(4 minutes)*

Use ping-pong mode on a short loop (approximately one second). Listen to the back-and-forth motion. Now try the same loop region in forward mode. Compare: does the ping-pong feel more natural, more mechanical, or simply different? Try three different sounds and note which works best in each mode.

### Exercise 26

*(5 minutes)*

Build a two-layer composition using only loops. Simpliciter 1 plays a long drone loop; Simpliciter 2 plays a short rhythmic loop. Route both through a mixer. Balance the levels so the rhythmic loop punctuates the drone without overwhelming it. Let the piece run for ninety seconds without touching the controls. Listen back to what you made.

---

## Technique G — Editing

Editing in Dwyer's practice was irreversible physical surgery: you cut the tape with a razor blade and joined the pieces with splicing tape. A well-placed splice was invisible to the listener — a clean join between two sounds with no click and no pause. A poorly placed splice announced itself immediately. Getting good at editing on tape required practice and steady hands. The fundamental concept, though, was simple: the edit point is where the end of one sound meets the beginning of the next.

In VCV Rack, the nearest equivalent to the razor blade is Simpliciter's **START** and **END** knobs. They do not destroy anything — your original recording remains intact — but they define exactly which portion of it plays. Set START to 0.3 and END to 0.7 and you play only the middle forty percent of the recording. Everything before and after is simply ignored. This is non-destructive editing: you can change your mind, re-set the knobs, and play a completely different section of the same recording.

![Technique G — START/END markers in Simpliciter](images/screenshots/technique-g-editing.png)

### The Edit Point

The art of editing is the art of the edit point — the place where sound A ends and sound B begins. In tape editing, this join happened instantaneously (or, with a crossfade splice, over a very short overlap). In VCV, you can replicate this by sequencing multiple Simpliciters: each one plays a different segment, triggered by a gate signal from a sequencer.

The basic setup:

1. Load your recordings into two or more Simpliciter modules.
2. Set START and END on each to define the segment you want.
3. Add a **VCV SEQ-3** or similar step sequencer.
4. Route the sequencer's gate outputs to the **TRIG** inputs of the respective Simpliciters — Gate 1 triggers Simpliciter 1, Gate 2 triggers Simpliciter 2, and so on.
5. Set the sequencer tempo to control how quickly it moves between steps.

Now each step of the sequencer triggers a different sound segment in sequence. This is a direct VCV equivalent of a spliced tape: a series of fragments played end-to-end in a defined order.

The join between segments can be abrupt (immediately satisfying in rhythmic music) or smoothed using Simpliciter's FADE parameter (useful for continuous, flowing passages). Experiment with both.

### The DAW as Sidecar

For more precise editing — trimming sounds to the exact millisecond, normalising levels, applying fades visually — VCV Rack has practical limits. The START and END knobs give you good control, but they don't show you a waveform, and fine adjustments can be fiddly. This is where a free DAW (Digital Audio Workstation) such as **Audacity** becomes useful as a companion tool.

The workflow is simple: record your sounds in Simpliciter and find the .wav files in your patch folder; open them in Audacity; edit precisely using the visual waveform display; export the edited files back to the same folder; reload them in Simpliciter. This round-trip adds a step, but it gives you a level of precision that is genuinely difficult to achieve with knobs alone.

*Note: Simpliciter saves its recordings in the same folder as your VCV Rack patch. Keep your patch files organised and named clearly — it makes finding the right .wav file much easier.*

::: {.creative-option}
**Granular Synthesis as Modern Splicing**: Once you are comfortable with the editing techniques described here, it is worth knowing that granular synthesis carries the logic of tape splicing to an extreme. A granular module — the **Mutable Instruments Beads** (or its VCV equivalent, **Audible Instruments Texture Synthesizer**) — cuts incoming audio into hundreds of tiny fragments called grains, each typically between one and one hundred milliseconds long, and reassembles them in real time. The position within the recording, the grain size, the density of the grains, and the playback speed are all adjustable. It is, conceptually, an infinitely fast editor making thousands of tiny splices per second. This is not where you need to start — getting comfortable with Simpliciter's basic editing first is the right order — but it is a fascinating direction to explore once the fundamentals are solid.
:::


### Exercise 27

*(4 minutes)*

Record a sound of at least fifteen seconds. Using only Simpliciter's START and END knobs, find five distinct "inner sounds" within that recording — five different segments that each feel like a complete, self-contained sonic event. You do not need to play them in sequence yet. Just identify them and note the approximate START and END positions of each.

### Exercise 28

*(6 minutes)*

Using two Simpliciters, set each one to a different segment of the same or different recordings. Trigger them in alternation using a simple sequencer or by manually pressing their TRIG buttons. Aim for a clean edit point between them — the end of sound A into the beginning of sound B should feel like a deliberate cut, not an accident. Try five different combinations of segments. Which feels most like a composed transition? Which feels most like a collision?
