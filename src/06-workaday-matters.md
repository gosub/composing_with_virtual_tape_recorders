# Workaday Matters

Making music is the interesting part. But making music sustainably — without losing work, running into technical dead ends, or drowning in a chaos of unlabelled files — requires some practical habits. This chapter is the housekeeping chapter: less glamorous than the techniques chapters, more useful than you might expect. Dwyer devoted a chapter to the practical realities of working with tape recorders, and the VCV Rack equivalents of those realities deserve the same attention.

None of this is difficult. It is mostly a matter of establishing good habits early, before bad habits calcify.

## Saving Your Work

VCV Rack saves your patch automatically as you work. The auto-save happens every few minutes and on close. You can also save manually at any time with **Ctrl+S** (Windows/Linux) or **Cmd+S** (Mac). Do this often. The auto-save is a safety net, not a replacement for deliberate saving.

Your patch file (a `.vcv` file) stores the layout of your modules, all their settings, and all their cable connections. It does not store audio. The audio recordings that Simpliciter captures are saved as separate `.wav` files in the same folder as your patch. This is important: if you move your patch file without also moving its associated `.wav` files, Simpliciter will open the patch and find nothing to load.

**Keep everything together.** The simplest way to stay organised is to create a dedicated folder for each project, save your patch file there, and make sure Simpliciter is writing its recordings into the same folder. You can set Simpliciter's recording directory by right-clicking the module and selecting a path.

**Name your patches clearly.** `patch1.vcv`, `patch2.vcv`, `new_patch_final.vcv` are names that will confuse you six weeks from now. `rain-drone-study-01.vcv`, `kitchen-sounds-experiment.vcv`, `bells-loop-draft.vcv` are names that tell you what is inside. Use dates in the filename if that helps: `2026-03-09-wind-texture.vcv`.

**Keep backups.** VCV patches are small files — a few kilobytes. The `.wav` recordings are larger, but a few minutes of audio at 44.1kHz/24-bit is still under 100 megabytes. Back everything up to an external drive or cloud storage. Losing a piece you cared about because of a hard drive failure is avoidable and demoralising.

## CPU and Polyphony

VCV Rack runs in real time. Every module in your patch is being computed continuously, and computation takes processing power. The **CPU meter** in VCV Rack's top toolbar shows what percentage of your processor's capacity is currently in use. If this number climbs above roughly 70–80 percent, you may start to hear audio dropouts — clicks and gaps in the sound caused by the computer running out of time to compute the next buffer of audio.

A few practical strategies for keeping CPU use manageable:

**Use fewer complex modules at once.** Reverb modules (particularly convolution reverbs) and complex oscillators are the most CPU-intensive. If you are not actively using a module, you can right-click it and select **Bypass** — this disables its processing without removing it from the patch. Bypass any module you don't need in the current moment.

**Keep oscillator counts low.** You rarely need more than two or three oscillators running simultaneously in a musique concrète context. Simpliciter itself is relatively efficient; the CPU cost usually comes from effects chains.

**Watch out for unintentional feedback loops.** A cable accidentally connected back into a module's own signal chain can cause either silence or a runaway process that pegs your CPU instantly. If your CPU meter suddenly jumps to 100 percent for no obvious reason, look for an unintended feedback connection.

**Increase the audio buffer size** if you hear persistent dropouts. Go to **Engine → Audio Settings** and increase the block size from 128 to 256 or 512 samples. This introduces a small amount of latency (the delay between input and output), but it gives VCV more time to compute each buffer and reduces the risk of dropouts. For real-time performance this matters; for studio work where you are recording and listening back, it almost never matters.

## Noise

You have probably been troubled by unwanted sounds ever since you started the course. Let's look at some typical recordist's noises and what can be done about them. (There is usually an irreducible minimum of background noise in any system. It is a matter of getting the signal/noise ratio to an acceptable level.)

*Hum.* Various causes, mainly to do with faulty or mismatched equipment. Ground loops between your audio interface and computer are the most common culprit: try a different USB port, or a powered USB hub to isolate the interface. Don't overlook the elementary pitfall of having your microphone on the same surface as equipment that vibrates.

*Extra sounds.* For example, the recordist moving about, or traffic sounds from outside. Four cures: one, record again; two, decide to accept it as sound, especially when processed; three, cover it up by adding another layer; four, hope it won't be noticed.

*Digital noise floor.* Unlike tape hiss, VCV Rack's digital noise floor is essentially zero. However, running Simpliciter at very slow speeds can introduce aliasing: harsh, metallic artefacts caused by frequencies exceeding the Nyquist limit. Cure: keep recording levels as high as possible; use a low-pass filter after Simpliciter when working at extreme speed reductions; or embrace the aliasing as a deliberate effect.

*Clicks.* In VCV Rack these most commonly occur at loop join points in Simpliciter, or from abrupt parameter changes while audio is running. The CLICK knob on Simpliciter is a transient smoother specifically for loop join clicks — adjust it by ear. For other clicks, avoid making abrupt cable connections or disconnections while audio is live.

*Fragments of previous recordings.* Simpliciter's audio persists in its .wav file until overwritten. If you reuse a recording slot without clearing it, remnants of old material may appear. The only reliable cure: clear the recording slot before beginning new work.

## Patch Organisation

A VCV Rack patch can become cluttered very quickly. Modules accumulate, cables tangle, and after a few hours of work you may find yourself looking at a rack that you cannot follow visually. This matters: a patch you cannot read is a patch you cannot modify confidently.

A few conventions that help:

**Signal flows left to right.** Place your sound sources (Simpliciters, oscillators) on the left side of the rack. Place your processing (filters, effects, mixers) in the middle. Place your outputs (Audio OUT, recorders) on the right. This is a convention, not a rule, but it makes patches much easier to follow.

**Use labels.** Right-click any empty area in VCV Rack to add a text label. Label your groups: "SOURCES", "PROCESSING", "OUTPUT". Label any module whose function is not immediately obvious from its name.

**Group by function.** Keep all the modules for one "voice" or "channel" close to each other. If you have two Simpliciters each with their own effects chains, keep each chain physically grouped together in the rack, with some visual space between the groups.

**Maintain a template patch.** Once you have a working setup — a few Simpliciters, a mixer, some standard effects, an output module — save it as `template.vcv`. When you start a new project, duplicate this template rather than building from scratch each time. This preserves the structure you've learned works for you, and it means you spend your project time making music rather than reconnecting the same cables repeatedly.

## Exporting Audio

When you are ready to export a finished piece — or to create a recording for critical listening — VCV Rack gives you two options.

**The built-in Recorder module** (from the VCV Fundamental pack) is the simplest. Add it to your patch, connect your master output signal to its inputs, click the REC button, and it captures whatever comes through. Click REC again to stop. The file is saved as a `.wav` in your patch folder.

**NYSTHI Master Recorder** offers more control: separate level metering, file naming options, and the ability to split recordings automatically at defined intervals. It is part of the same NYSTHI plugin pack as Simpliciter. For serious work, it is the better tool.

For most purposes, use **44.1kHz or 48kHz** sample rate and **24-bit** depth. These are standard studio settings. 24-bit gives you significantly more headroom than 16-bit — more room between your signal and the noise floor — without the enormous file sizes of 32-bit float. If you need to share your work as an MP3 or for streaming, export as 24-bit WAV first and then convert using a separate application. Never work in a compressed format during production.

*Note: The sample rate of your VCV Rack session is set in **Engine → Audio Settings**, not in the recorder module. Make sure this matches the sample rate of your recordings — mixing 44.1kHz and 48kHz files in the same session can cause subtle pitch discrepancies.*

## Developing a Workflow

Dwyer observed that tape composers who worked systematically — who kept notes, labelled their tapes, organised their materials — consistently produced better work than those who relied on memory and improvisation. Not because the systematic composers were more talented, but because they could find what they had, return to what had worked, and understand why something had failed.

The same applies here. A few practices that cost almost nothing but pay back considerably:

**Keep a notebook.** Or a plain text file alongside your patches. Write down what you tried, what sounds you used, what worked and what didn't. Note the module settings that produced an interesting result: Simpliciter at 0.6 speed with FADE at 12ms through a VCF at 800Hz. You will not remember this in two weeks. Write it down now.

**Label your recordings.** When Simpliciter saves a `.wav` file, it gives it a generic name. Rename it immediately to something descriptive: `rain-on-window-close.wav`, `voice-reversed.wav`, `metal-impact-slow.wav`. A library of descriptively named sounds is a library you can actually use. A library of `recording_001.wav`, `recording_002.wav` files is a library you will avoid because finding anything requires re-listening to everything.

**Listen back critically and on different equipment.** A piece that sounds brilliant through your studio headphones may sound muddled through laptop speakers. This is not a reason to avoid headphones — they reveal detail that speakers miss — but it is a reason to check your work on multiple playback systems before considering it finished. Listen in the car. Listen on your phone. If something is wrong, it will reveal itself.

**Rest before revising.** This is Dwyer's advice and it remains true: critical listening requires fresh ears. If you have been working on a piece for two hours, you are no longer hearing it accurately. Your ears have adapted to its particular qualities. Save it, close VCV Rack, and listen again tomorrow. You will hear things you could not hear while you were inside the work.

The technical matters in this chapter are not exciting in themselves. But mastering them means you spend less time managing your environment and more time working inside it. That is the point: get the housekeeping right once, and then stop thinking about it.
