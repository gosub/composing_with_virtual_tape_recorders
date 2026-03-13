# Any Number Can Play

Composing with a virtual tape recorder is a fascinating new musical adventure, and you are invited. It doesn't matter whether you can read music or play an instrument. It doesn't matter whether you've studied harmony or acoustics or signal processing. What matters is that you have ears, curiosity, and access to a reasonably modern computer. The computer is your studio. The software is free. The sounds are everywhere.

This is not a casual reassurance. Musique concrète — the art of making music from recorded, manipulated sounds — was invented by people who were deliberately trying to escape the gatekeeping of traditional music. Pierre Schaeffer, who coined the term in Paris in 1948, was a radio engineer, not a trained composer. He made his first pieces on a turntable, using shellac discs with the grooves cut so that the needle would loop endlessly. He was, in the best sense, mucking about. This book gives you permission to do the same.

## Requirements

To follow this book, you need three things.

**First**: a computer. It doesn't need to be powerful by modern standards — any machine capable of running a web browser smoothly will handle what we're doing here. Windows, Mac, or Linux all work equally well.

**Second**: **VCV Rack**, the free, open-source modular synthesizer software. Download it from [vcvrack.com](https://vcvrack.com). The free version — called VCV Rack 2 Free — is everything you need. (There is also a paid Pro version aimed at professional studio integration; ignore it for now.)

**Third**: the **NYSTHI plugin pack**, which contains the Simpliciter module that serves as our virtual tape recorder throughout this book. To install it, first create a free account at [vcvrack.com](https://vcvrack.com), then log in inside VCV Rack via the Library menu. Go to [library.vcvrack.com](https://library.vcvrack.com), search for **NYSTHI**, and subscribe — you can subscribe to the whole NYSTHI collection at once, or add individual modules. Back in VCV Rack, open the Library menu and click **Update all** to sync your subscriptions. The whole NYSTHI collection is free.

For audio input — recording sounds from the real world — you'll need a microphone. A built-in laptop microphone is sufficient for early experiments. An external USB microphone is better. A proper condenser microphone connected through an audio interface is better still. But start with what you have.

In the original *Composing with Tape Recorders*, Terence Dwyer described an "ideal" studio (a reel-to-reel tape deck, a mixer, a microphone, some effects units) and a "minimum" setup (a single tape recorder with a built-in microphone). The same hierarchy applies here. The ideal VCV Rack setup might include a dedicated audio interface, a good microphone, and a collection of effects modules. The minimum is a laptop with its built-in microphone and two free software downloads. Both will get you making music.

::: {.creative-option}
**No microphone? No problem.**

You don't strictly need to record your own sounds. Sites like [Freesound](https://freesound.org) offer thousands of freely licensed audio files — field recordings, instruments, found sounds — that you can download and play through a sample player module wired into Simpliciter's input. You can also download audio from video platforms using any of the many free tools available for that purpose.

That said, recording your own sounds is more fun, more personal, and more in the spirit of what this book is about. A built-in laptop microphone, pointed at something interesting, is all you need to start.
:::

### First Launch: The Default Patch

When you first open VCV Rack, you won't see a blank canvas. VCV Rack starts with a default template patch: a polyphonic subtractive synthesizer playable from your computer keyboard or a MIDI controller. Before doing anything else, click on the **Audio** module and select your audio output device from the dropdown. Then press a few keys. You now have a working synthesizer.

Feel free to play with it for a while. It's a good introduction to how VCV Rack feels and sounds. When you're ready to move on, clear the canvas: go to **Edit > Select All**, then **Edit > Delete** (or drag a selection box around all the modules and press **Backspace**). You'll be left with an empty rack, ready to build your own patch from scratch.

### Your Starter Patch

To add a module to the empty rack, right-click on any empty space to open the module browser. Search by name or browse by category.

To connect two modules, click on any jack (the small circular connectors on the face of each module) and, while holding the mouse button down, drag to another jack. Release to make the connection. A coloured cable will appear between them. To disconnect, click the cable at either end and drag it away.

One useful convention visible on the Audio module: the jacks with a **black background** are labelled outputs — the module outputs the microphone signal from them into your patch. The jacks with a **white background** are labelled inputs — they receive signal from your patch and send it to your speakers or headphones. Both pairs are simply labelled **LEFT** and **RIGHT**.

Now build this simple signal chain:

1. Add an **Audio** module (from the VCV Fundamental pack, which comes pre-installed). This is your connection to your computer's sound card — both input and output. Click it and select your audio device if you haven't already.
2. Add a **NYSTHI Simpliciter** module.
3. Connect the Audio module's black-background **LEFT** and **RIGHT** jacks (microphone signal) to Simpliciter's **IN L** and **IN R** jacks.
4. Connect Simpliciter's **OUT L** and **OUT R** jacks to the Audio module's white-background **LEFT** and **RIGHT** jacks (to your speakers).

![Signal flow diagram](images/diagrams/starter-patch-signal-flow.svg)

That's it. That's your studio. Everything else in this book is built on top of this foundation.

![VCV Rack patch screenshot](images/screenshots/starter-patch.png)

More modules mean more possibilities — you can add filters, oscillators, effects, mixers, and hundreds of other things as you grow more confident. But one Simpliciter is genuinely enough to begin. Dwyer made the same point about tape recorders: one machine, used imaginatively, is more than sufficient for serious work.

## Nature of Virtual Tape Music

Musique concrète is music made from recorded sound: not synthesised tones generated mathematically, not MIDI notes triggering samples in the traditional sense, but actual sound recordings, treated as raw material to be cut, shaped, reversed, layered, and transformed until they become something new.

When Schaeffer and his collaborators made their first pieces, the transformation happened physically: slowing a disc down changed its pitch; playing tape backwards revealed hidden textures; splicing two recordings together created juxtapositions that neither sound could achieve alone. The process was laborious and irreversible. A splice, once made, was permanent until you cut it apart again.

VCV Rack replaces all of that physical process with a virtual equivalent. The Simpliciter module is, at its core, a digital sampler: it records sound into memory, and it plays it back. But the way it plays back is where the magic lives. You can play at half speed (and the pitch drops an octave). You can play backwards (and rhythms become strange incoming gestures). You can set loop points and create repeating patterns. You can overdub, layering new sounds over old ones. You can do all of this without destroying your original recording, which means you can experiment freely in a way that tape composers could not.

If you've never thought of yourself as a composer, that freedom is the important thing. There is no permanent mistake. There is only sound, and what you choose to do with it.

## Working Without a Teacher

Most of the work in this book you'll do alone, or nearly alone. That's by design. Musique concrète rewards solitary listening in a way that few other musical practices do — you are constantly making decisions about what sounds good, what sounds interesting, what sounds wrong, and only your own ears can tell you.

Dwyer was clear on this point, and it bears repeating: self-criticism is your most important tool. After you make something, listen to it again the next day. Play it to someone you trust — not for their technical opinion, but for their honest reaction. Does it hold their attention? Does something in the middle lose them? These responses are data.

What you should not do is take generalised censure seriously. "That's just noise" is not a critique. "I don't understand it" tells you something about the listener's expectations, not about the quality of your work. The history of musique concrète is full of pieces that were dismissed as noise by people who later came to love them. Trust your ears. Revise when your own listening tells you to revise.

The discipline of this kind of composition is entirely internal. No one will tell you when a piece is finished. No one will tell you that a particular sound is wrong. You have to develop that judgment yourself, through making things and listening to them honestly. It takes time. It is also, in Dwyer's word, fascinating.

## The VCV Rack Community

You are not alone in this, even if you're working by yourself. VCV Rack has a large and unusually welcoming community. The [VCV Forum](https://community.vcvrack.com) is a good place to ask questions, share patches, and find inspiration. The VCV Library contains thousands of free modules contributed by developers around the world — effects, sequencers, utilities, and many things that don't fit neatly into any category.

When you make something you're pleased with, consider sharing your patch file. VCV Rack patches are small text files that capture the entire state of your canvas — every module, every cable connection, every knob position. Sharing them costs nothing and often starts conversations.

For now, though: open VCV Rack, build your starter patch, and make some noise. The adventure begins exactly where you are.
