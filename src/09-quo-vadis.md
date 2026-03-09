# Quo Vadis?

You've reached the end of the book. You know how to record sounds, reverse them, loop them, layer them, change their speed and pitch, chop them into fragments, and arrange all of this into a planned structure using a tape score you drew on paper before touching the computer. You've made pieces. You have ears that are now hearing the world differently than they did before you started.

Where do you go from here?

That's the question Dwyer asked at the end of his 1971 book, and it's the right question to ask at the end of this one. The answer isn't a syllabus or a curriculum. It's more like a landscape — a description of the territory that surrounds where you're standing, so you can see which directions are open to you.

## The VCV Rack Ecosystem

The version of VCV Rack you've been using contains a tiny fraction of what the platform offers. The VCV Library hosts thousands of modules from hundreds of developers, the majority of them free. These range from small utility modules — a cable that splits one signal into four, a module that delays a trigger by an adjustable number of milliseconds — to massive, complex instruments that are entire synthesisers in a single panel.

The community behind this is active and, by the standards of online communities, remarkably friendly. The [VCV Forum](https://community.vcvrack.com) is a good place to ask questions no matter how basic they seem. People share patches, explain techniques, troubleshoot problems, and post recordings of what they've made. Nobody there will tell you that what you're making isn't music.

Finished patches — the complete `.vcv` files that contain every module and every cable connection in a patch — can be shared at [Patchstorage](https://patchstorage.com), which functions as a kind of community library for modular synthesis patches across multiple platforms, VCV Rack among them. Browsing patches there is one of the best ways to see how other people solve compositional problems, and discovering a patch from a composer you admire and being able to open it, look inside, and see exactly how it was built is an educational experience that has no equivalent in any other musical tradition.

## From Tape to Modular

It's worth pausing here to appreciate the lineage you've entered.

In 1948, Pierre Schaeffer sat at a turntable in the studios of Radiodiffusion Française in Paris and made the first musique concrète. The tools were shellac discs with locked grooves, a mixing desk, and his ears. By the mid-1950s, tape recorders had replaced turntables, and the vocabulary of tape music — splicing, speed manipulation, reversal, superimposition — became the vocabulary of an entire practice.

In the 1960s, Robert Moog and Donald Buchla began building modular synthesisers: instruments made of interchangeable modules — oscillators, filters, amplifiers, envelope generators — connected by patch cables. These synthesisers spoke the same language as tape music: control voltages, signal routing, the idea of patching a signal path rather than playing a fixed instrument. Many of the composers who took up modular synthesis had come from tape music.

In 1996, Dieter Doepfer introduced the Eurorack format: a compact, standardised hardware modular synthesiser format that eventually became the dominant form for hardware modular synthesis. By the 2010s, Eurorack had become a genuine cultural phenomenon, with hundreds of manufacturers worldwide producing modules.

In 2017, Andrew Belt released the first version of VCV Rack: Eurorack, reimagined as free software. Every module in VCV Rack is a software simulation of the same ideas that have been developing since 1948. The CV jacks you patch in VCV Rack are descendants of the control voltage signals that ran between Moog modules in 1964, which are descendants of the tape-to-tape signal routing in Schaeffer's studio in 1948.

When you patch a cable in VCV Rack, you're participating in a tradition that's nearly eighty years old. You're also doing something nobody could have done before 2017: accessing the whole of that tradition for free, on a laptop, anywhere.

## Performing Live with VCV Rack

Everything you've done in this book has been compositional — you make something, you listen back, you revise it, you present a finished recording. But VCV Rack can also be a live performance instrument, and that possibility is worth knowing about even if it doesn't interest you immediately.

A VCV patch responds to input in real time. If you connect a MIDI controller to your computer and route it into VCV Rack, knob turns and button presses on the controller can manipulate patch parameters as the patch runs. You can change the playback speed of a Simpliciter on the fly, bring in a reverb by raising a send level, cut a track by dropping a VCA to zero. A performance with VCV Rack can be as structured as a composed piece — running a largely automated patch while occasionally intervening — or as improvised as a jazz set.

The VCV Rack Pro version (the paid version) includes the ability to run VCV Rack as a plugin inside a DAW, which opens up further performance possibilities: you can record the output of a live patch directly into a multitrack session. But this is well beyond what this book requires.

If live performance interests you, the VCV Forum has extensive discussions about live setups, MIDI mapping, and performance practice. The learning curve is steeper than composition, because you can't fix mistakes in post, but the rewards — the feeling of real-time responsiveness, the audience, the things that go differently every time — are different in kind from the rewards of studio composition.

## Sharing Your Work

Musique concrète was always, from the beginning, a public art. Schaeffer's first pieces were broadcast on French radio. The early concerts of musique concrète at the Théâtre des Champs-Élysées in 1951 were public events. The tradition of the acousmatic concert — audience in a darkened room, loudspeakers surrounding them, no performers visible — was specifically designed to strip away everything except the listening. The music had to stand alone.

You have better distribution tools than Schaeffer did. [SoundCloud](https://soundcloud.com) and [Bandcamp](https://bandcamp.com) are both free to use for hosting recordings, and both have communities of listeners for experimental and electronic music. Bandcamp is particularly well-suited to releasing finished work, however short — a single piece is a perfectly valid Bandcamp release. Patchstorage, as already mentioned, is the right place to share the patches themselves.

Sharing is not an obligation. Some composers prefer to keep their work private, or to share only with people they know. But if you've made something and you're uncertain whether it's "good enough" to put out into the world, the answer is almost always: post it. You will learn more from the responses — including the silence of no responses — than from sitting on it. And the act of declaring something finished, by sharing it, is itself a discipline.

## What Comes Next

This book has covered what Dwyer covered, translated into VCV Rack terms. But Dwyer's book was written in 1971, and the territory has expanded enormously since then. There are several directions you might want to explore when you're ready.

**Granular synthesis** is the logical extension of everything you've been doing. The core idea is simple: take a recording, slice it into tiny fragments — "grains" — typically between one and one hundred milliseconds long, and reassemble them. The grains can be played in order, scrambled randomly, looped, pitched up or down, stretched. A recording treated granularly can be turned into a shimmering cloud of its own texture, a smeared blur, a stutter, a pitch-shifted version of itself that retains none of the original rhythmic structure. The Audible Instruments Texture Synthesizer module in VCV Rack (a simulation of the Clouds hardware module) is a direct gateway to this technique. Start with a simple Simpliciter recording and feed it into Texture Synthesizer; turn the knobs slowly and listen to what happens.

**Spectral processing** works by transforming sounds in the frequency domain rather than the time domain. A spectrogram — a visual representation of a sound showing all its frequencies over time — becomes, in spectral processing, something you can edit directly: removing certain frequencies, stretching the spectrum, combining the spectrum of one sound with the amplitude envelope of another. This is further from what VCV Rack does natively, and is better explored in a DAW with spectral editing tools, but the perceptual vocabulary you've built in this book maps directly onto it.

**Generative composition** uses probability, randomness, and algorithmic rules to produce music that composes itself, guided but not entirely controlled by the composer. VCV Rack is extraordinarily well-suited to this — probability modules, random voltage generators, Euclidean rhythm generators, and Markov chain sequencers are all available in the free library. A generative patch is not something you "perform" or "compose" in the traditional senses; it's something you design, set in motion, and then listen to, occasionally adjusting. It can run for hours. Some composers record a few minutes from the middle; others let it run live and call it a concert.

All of these are waiting. None of them require anything more than what you already have.

## Closing

Dwyer ended his book with simple advice, and the advice hasn't changed.

Go and make something. Not when your patch is perfectly designed. Not when you have a better microphone. Not when you've read more about theory. Now, with what you have, which is a computer, free software, a microphone of some kind, and ears that have been listening carefully for the duration of this book.

Your computer is your studio. Simpliciter is your tape recorder. The techniques are in your hands. The sounds are everywhere around you — in the room you're in, in the building you're in, in the street outside, in your own voice and breath and movement through the world.

The only thing left is to begin.

So: *Quo vadis?* Where are you going?

Somewhere worth listening to, I hope.
