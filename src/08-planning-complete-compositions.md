# Planning Complete Compositions

You've been making exercises. Short studies, a minute or two, each one focused on a single technique or a specific problem. That's exactly as it should be — the exercises exist to build fluency, the same way a pianist practises scales not to perform scales but to play music. The question this chapter addresses is: what happens next? How do you move from exercises to pieces?

The honest answer is that the distance is smaller than you might think. A composition is not a different kind of thing from an exercise; it's an exercise with intention behind the whole of it, not just the individual moments. But the word "intention" does a lot of work there, and it's worth unpacking what it means in practice.

## From Exercises to Pieces

Dwyer was direct about this. A composition is planned. Not every detail — the best compositions leave room for discovery as you work — but the shape, the proportions, the general sense of where it goes and why. You don't assemble a composition from whatever comes to hand, the way you might pile leftover food into a random stew. You decide what it's about, what sounds will serve that intention, roughly how long it will be, and how it will feel to be inside it from beginning to end.

This does not mean sitting down with a finished blueprint before you touch VCV Rack. It means that before you start building, you have asked yourself some questions and have at least provisional answers. What are the two or three sounds that will carry this piece? How will it begin — with a single striking sound, with a texture that arrives gradually, with silence that gets interrupted? How will it end — with a fade, with a hard cut, with something that resolves or something that is left open? Is there a moment of maximum intensity, and if so, where in the piece does it come?

These are not complicated questions. But the habit of asking them before you start is what separates a composed piece from a patch you made while experimenting and then decided to keep.

There is a practical reason, too, to plan before you build. A VCV patch grows complicated quickly. Once you have six Simpliciter modules, three mixers, a gate sequencer, and an LFO all interconnected, it becomes genuinely hard to hear what each element is contributing. Planning — even sketchy, provisional planning — helps you know what you're building toward. It keeps you from adding a seventh element because you're not sure if the piece is working, when what you actually need is to listen more carefully to what you already have.

## The Tape Score

Dwyer's most practically useful contribution to this problem was what he called a "tape score" — a notation system for planning musique concrète before you record it. It's simple enough that you can draw one in a few minutes on any piece of paper.

The basic principle: a horizontal line represents time, reading left to right. The beginning of the piece is at the left edge; the end is at the right edge. You mark the total duration somewhere — two minutes, say, or ninety seconds — and then divide the line into segments that represent where things happen.

Events above the line are sounds at normal or high volume. Events below the line are quieter, background sounds. The shape of a block tells you something about its dynamic character: a block with a sharp left edge represents a sudden attack; a block that tapers in from the left represents a gradual entrance. A block with a peak in the middle represents a sound that swells and then fades. A dotted or hatched block might represent a loop.

You can annotate each block with letters — the techniques from this book are labelled A through L, and you can write them directly on the blocks. Block with an "F" over it: that sound is being played backwards. Block with a "C": this sound is slowed down. Overlapping blocks indicate superimposition. A gap between blocks indicates silence.

This is exactly how you'd sketch a VCV patch with multiple Simpliciter modules. Each row of the score corresponds to one Simpliciter — so if you have three Simpliciters running simultaneously, your tape score has three rows, each representing one track, all sharing the same time axis. Time flows left to right in the score; time flows left to right in the patch as it plays. The notation and the technology correspond directly.

You don't need to be an artist to draw a tape score. Rough rectangles are fine. The point is not a beautiful diagram; it's a plan you can refer to while you're working, and change as you discover things that need changing.

::: {.creative-option}
**Creative Option: Colour Coding**

If you have coloured pens or pencils to hand, try assigning a colour to each category of sound — one colour for Tones, another for Sones, another for Pseudotones, another for Mistones. Colour in your tape score blocks accordingly. At a glance you can see whether your piece is dominated by one type of sound, whether the categories are balanced, where transitions between types occur. Some composers find this reveals structural imbalances they hadn't noticed while listening.
:::

## Structural Forms

Composers have been organising musical time for centuries, and the large-scale structural forms they arrived at are not arbitrary conventions — they reflect real things about how listeners experience duration, expectation, and return. Musique concrète has no obligation to use these forms, but knowing them gives you a vocabulary for thinking about shape, and that's useful regardless of what you ultimately decide to do.

**Binary form** is the simplest: two sections, A and B, each distinct. The piece goes somewhere and then goes somewhere else. Binary form tends to feel like a statement and a response, a question and an answer, a before and an after.

**Ternary form** — A-B-A — is binary form with a return. You establish something, depart from it, and come back. The return almost never feels exactly like the opening, even if the sounds are identical, because the middle section has changed your relationship to them. Ternary form is among the most naturally satisfying structures in music, for reasons that have something to do with memory and recognition and the pleasure of things being where you expect them.

**Arch form** is ternary form extended: A-B-C-B-A. The piece builds toward a centre and then unfolds in reverse. It can feel very deliberate, even ceremonial, and it requires careful calibration of proportions — if your C section isn't clearly the most intense or most different, the arch collapses into a muddle.

**Mirror structures** are related to arch form but can be applied to smaller units than whole sections. You might mirror a rhythmic pattern, or a sequence of attacks, or the dynamic envelope of a phrase. A crescendo followed by its mirror, a decrescendo, creates a shape that appears in countless pieces — it's one of the most natural shapes in music. A texture that gradually fragments and then gradually reconstitutes itself has a mirror structure. These shapes are powerful partly because they're symmetrical, and partly because the ear registers asymmetries against them: a mirror that's slightly off-centre, a return that's transformed rather than exact.

None of these forms are requirements. A piece can simply evolve from beginning to end without returning to anything — a through-composed form — and this is common in electronic music. But if a piece isn't working and you can't identify why, asking "what form is this?" is often a useful diagnostic. Formlessness is not the same as freedom; sometimes a piece needs a clearer shape.

## Planning a VCV Patch as Score

Before you open VCV Rack to build a new piece, get out some paper. Draw your tape score first.

Start with duration. Pick a target length — for the exercises at the end of this chapter, you're aiming for one to two minutes. Draw a horizontal line, label the right end with your target time.

Now decide how many Simpliciter modules you'll use. For a beginner piece, two or three is enough. More is possible, but each additional track multiplies the complexity of your decisions. Draw one horizontal row below the time axis for each Simpliciter you plan to use.

For each row, sketch where sounds appear. Don't worry about which specific sounds yet — just rough shapes. Does this Simpliciter play throughout, or only in certain sections? Does it come in suddenly or gradually? Are there moments of silence on this track?

Now think about triggering. Each Simpliciter needs to know when to play. Your options are:

- **Manual triggering**: you click the PLAY button yourself. This works for pieces where you perform the patch live, but it's hard to control precisely.
- **Gate sequencer**: a module like the SEQ-3 sends a gate signal to Simpliciter's PLAY input, triggering playback on a schedule. You set the sequence and it runs automatically. This is much more reliable for precise timing and repeating patterns.
- **LFO trigger**: a slow LFO module can be set to send a regular pulse, triggering the Simpliciter on each pulse. Useful for creating rhythmic loops without a dedicated sequencer.

Add this to your tape score — annotate each track with how it will be triggered. When you actually build the patch, you'll know what modules you need before you start connecting cables.

Finally, before you touch the computer, listen to your plan in your imagination. Can you hear it? Can you sing or describe, even roughly, what it will sound like to move through the whole piece from beginning to end? If you can, you're ready to build. If you can't — if the plan is too abstract to hear — you probably need to make it more concrete. Add more detail about the specific sounds. Reconsider the structure.

::: {.creative-option}
**Creative Option: Paper Prototype**

Try this before building a complex patch: write the names of your planned sounds on small pieces of paper or index cards, one sound per card. Arrange them on a table in the order you want them to appear. Slide them around. Put two cards side by side to represent superimposition. Flip a card face-down to represent silence. This physical manipulation of your material can reveal structural possibilities — and problems — that are harder to see in a drawing.
:::

## Exercises

For these exercises, you'll plan and then execute compositions of one to two minutes using any of techniques A through L from earlier chapters. Each exercise specifies a structural requirement; beyond that, the choices are yours.

*Note: Before each exercise, draw a tape score on paper. Do not open VCV Rack until your tape score is complete. This is the discipline.*

### Exercise 45

*(40 seconds)*

Plan a binary composition: two clearly contrasting sections. Both sections should use the same original sound source, but the techniques applied to it should make the two sections feel like entirely different materials. Note in your tape score which technique(s) you apply in each section.

### Exercise 46

*(40 seconds)*

Plan a ternary (A-B-A) composition. The return to A should not be identical to the opening — alter something. Your tape score should show clearly how the third section differs from the first.

### Exercise 47

*(40 seconds)*

Plan a composition for two Simpliciter tracks running simultaneously. Sketch both tracks on your tape score. Where do they overlap? Where does one track go silent to give the other space? What happens at the exact midpoint of the piece?

### Exercise 48

*(1 minute)*

Plan and build a composition that begins in silence — not with an immediate sound, but with something quiet enough that the listener has to lean in. Your tape score should show at least ten seconds of very low-level material before anything more prominent enters.

### Exercise 49

*(1 minute)*

Plan a composition with a clear arch form (A-B-C-B-A). Your C section should be the most transformed, most processed, most "away" from your original material. The return to B and then A should feel like a gradual coming back.

### Exercise 50

*(1 minute)*

Plan a composition for three Simpliciter tracks. One track provides a continuous textural bed throughout the whole piece. The other two tracks enter and exit, creating foreground events against the bed. Mark the textural bed track clearly in your tape score — draw it differently from the other two.

### Exercise 51

*(1 minute)*

Plan a composition that uses a gate sequencer (SEQ-3 or equivalent) to automate the triggering of at least one Simpliciter. Design a trigger pattern of six to eight steps in your tape score before you build the patch. The pattern does not need to be regular — silence between triggers is part of the composition.

### Exercise 52

*(2 minutes)*

Plan a through-composed piece — no repeated sections, no return to earlier material. The piece should move continuously forward, each section emerging from the previous one without going back. Your tape score is particularly important here, because through-composition requires careful attention to the sequence of events. If something doesn't feel inevitable, consider reordering it.

### Exercise 53

*(2 minutes)*

Plan your most ambitious piece so far: two to three tracks, one to two minutes, using at least four different techniques from A through L, with a structural form you've consciously chosen. Write a one-sentence description of the piece before you draw the tape score: what is it about? What do you want a listener to feel or notice? Keep that sentence in front of you while you work.
