# Sounds Galore

Before you start recording things and moving knobs, it's worth spending a little time thinking about sound itself. Not acoustics — not the physics of pressure waves and frequency responses — but the practical, perceptual vocabulary of sound that a composer needs. What are you actually listening for? What makes one sound useful and another less so? What is the difference between a sound and a noise, and does that difference even matter?

Dwyer addressed these questions at the beginning of his book, and his answers are still good ones.

## Definitions

**Sound** is the sensation produced when vibrations reach the ear. Everything you hear is sound: speech, footsteps, music, rain on a window, a refrigerator's hum. The word is entirely neutral.

**Music** is sound organised in time with expressive or aesthetic intent. What counts as music is famously contested — people have been arguing about it for centuries, and the argument is not going to be settled here. For our purposes, a working definition is sufficient: music is what happens when someone makes deliberate decisions about sound, with the intention of affecting a listener. That definition is broad enough to include Beethoven and Schaeffer and everything in between.

**Noise** is the word we use for sounds we find disorganised, unwanted, or intrusive. Importantly, noise is a *judgement*, not a property. The same sound that is noise in one context is music in another. A jackhammer is noise to someone trying to sleep; it was music to Luigi Russolo, who built instruments designed to imitate it. One of the most liberating things about musique concrète is that it takes this perceptual flexibility seriously. In this kind of composition, there is no sound that is inherently disqualified from becoming music.

Keep that thought close. You'll need it.

## Features of Sounds

Every sound you'll work with has several properties worth attending to. Learning to hear these consciously — rather than just reacting to sounds as pleasant or unpleasant — is one of the core skills this book will help you develop.

**Duration** is the most immediately obvious property. For working purposes, sounds fall into rough groups:

- *Short sounds*: a tap, a click, a dropped coin. Over almost before they begin.
- *Long sounds*: a sustained note, a held breath, a running tap. They persist and give you time to hear their other properties.
- *Fading sounds*: sounds that begin with energy and then decay — a struck bell, a plucked string, a handclap in a large room. These are among the most musically useful sounds, because the decay carries information about the space and the object.
- *Tremolo sounds*: sounds that fluctuate in volume over their duration — a vibrato voice, a wavering engine, a loose window in a gust. The fluctuation gives them a living, unstable quality.

**Pitch** is how high or low a sound feels. Some sounds have a clear, definite pitch — a tuning fork, a sung vowel, a flute note. Others have a vague or ambiguous pitch — a bass drum, white noise, a crowd. And some seem to have no pitch at all in any conventional sense — a door slamming, a snare hit, a handclap. All of these are usable. Definite pitch gives you harmonic and melodic possibilities; ambiguous pitch gives you textural ones.

**Timbre** (pronounced TAM-ber, or TAM-bree if you prefer the French) is the quality that makes a clarinet sound like a clarinet and not a flute, even when they're playing the same note at the same volume. It's the colour of a sound, its texture, the thing that makes it recognisable. Timbre is enormously important in musique concrète, because transformed sounds often retain their timbral character even when pitch and duration have been radically altered. A reversed bell still sounds glassy. A slowed-down voice still sounds human, even when it becomes too low to understand.

**Volume** is loudness — but think of it dynamically. A sound isn't just loud or soft; it has an *envelope*: the shape of its volume over time. This shape has two particularly important parts: the **attack** (how quickly the sound rises to its maximum loudness) and the **decay** (how it fades away afterwards). A sound with a sharp attack and a long decay — like a cymbal — feels very different from a sound with a slow attack and an abrupt cutoff — like a bowed note that's suddenly stopped. Changing the attack and decay of a sound changes its character dramatically, and this is something Simpliciter gives you direct control over.

## Sound Classification

Dwyer proposed a four-part classification of sounds that is useful precisely because it cuts across ordinary categories. Rather than dividing sounds by their source (instrument, voice, environment), it divides them by their *musical character*. The four categories are:

**Tones** are sounds produced by musical instruments in the conventional sense — sounds with clear, definite pitch, produced intentionally for musical purposes. A piano note, a bowed cello, a blown oboe: these are tones. They sit most naturally in harmonic and melodic contexts, but that doesn't mean they can't be transformed into something stranger.

**Mistones** are sounds produced by musical instruments, but in unconventional ways — extended techniques, accidents, abuse. A violin string scraped near the bridge with too much pressure. A piano prepared with a strip of aluminium foil. A clarinet key clicked without blowing. Mistones are tonally ambiguous; they retain the timbral signature of their instrument but shed its conventional pitch behaviour. They are extremely useful.

**Pseudotones** are sounds from the everyday world that happen to have a musical or quasi-musical character — a definite or near-definite pitch arising from their physical nature rather than from any musical intent. A humming transformer, a spinning fan, a wine glass tapped with a spoon, a swingset's chain, a kettle coming to the boil. These are not musical instruments, but they behave like them in certain ways. Schaeffer was fascinated by pseudotones, and many of the most memorable sounds in classic musique concrète come from this category.

**Sones** are everything else: sounds with no discernible pitch, no musical instrument associations, no quasi-tonal character. Footsteps, rain, traffic, crowd noise, breaking glass, tearing paper, typing. Pure texture, pure noise in the neutral sense. Sones form the rhythmic and textural backbone of a great deal of musique concrète. They are not lesser sounds — they are simply sounds that work differently, and part of your job as a composer is to discover how.

No sound belongs permanently to one category. A tone, played backwards and slowed to a tenth of its speed, may become a sone. A sone, processed through a resonant filter, may acquire a pseudotonal quality. The categories are tools for listening, not permanent labels.

## Recording Sounds into VCV Rack

With vocabulary in hand, it's time to actually capture some sounds. Here is how to get audio from the real world into Simpliciter.

**Step 1: Connect your microphone.** If you're using a USB microphone, plug it in and select it as your input device in your operating system's audio settings. If you're using a microphone through an audio interface, connect the interface via USB, plug the microphone into the interface's XLR input, and select the interface as your input device.

**Step 2: Configure VCV Rack's Audio module.** In your starter patch, click the Audio module's display. A menu will appear listing available audio devices. Select your microphone or audio interface. Set the sample rate to 44100 Hz and the block size to 256 samples — these defaults are fine for our purposes.

**Step 3: Check your signal.** The Audio module's input meters should show activity when you make a sound near the microphone. If they don't, check your operating system's input volume settings and make sure the correct device is selected.

**Step 4: Route to Simpliciter.** In your starter patch, the Audio module's output is already connected to Simpliciter's IN jacks. Simpliciter's large central display shows a waveform window; when no recording has been made, it will be empty.

**Step 5: Record.** On the Simpliciter panel, find the **REC** button. Click it to arm recording, then click it again (or send a trigger to the REC input) to begin. You'll see the waveform display begin to fill as audio comes in. Click REC again to stop.

That recording now lives in Simpliciter's memory, ready to be played, reversed, looped, and transformed. In the next chapter, we'll start doing all of those things.

::: {.creative-option}
**Creative Option: Room Acoustics as Texture**

Before you record anything "interesting", try recording thirty seconds of silence in your room. Not true silence — the silence your room actually sounds like: the hum of electronics, the distant sound of traffic, the creak of a building settling. This is called a *room tone*, and it's one of the most useful sones you can have. You'll find yourself returning to it as a textural bed under other sounds.
:::

For now, walk around your home — or wherever you are — and make a list. Listen for tones, mistones, pseudotones, and sones. You don't need to record anything yet. Just listen, and classify. You'll find the world is considerably louder and stranger than you usually notice.
