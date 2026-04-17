# Workaday Matters

## Noise

You have probably been troubled by unwanted sounds ever since you started the course. Let's look at some typical recordist's noises and what can be done about them. (There is usually an irreducible minimum of background noise in any system. It is a matter of getting the signal/noise ratio to an acceptable level.)

*Hum.* Various causes, mainly to do with faulty or mismatched equipment. Ground loops between your audio interface and computer are the most common culprit: try a different USB port, or a powered USB hub to isolate the interface. Don't overlook the elementary pitfall of having your microphone on the same surface as equipment that vibrates.

*Extra sounds.* For example, the recordist moving about, or traffic sounds from outside. Four cures: one, record again; two, decide to accept it as sound, especially when processed; three, cover it up by adding another layer; four, hope it won't be noticed.

*Digital noise floor.* Unlike tape hiss, VCV Rack's digital noise floor is essentially zero. However, running Simpliciter at very slow speeds can introduce aliasing: harsh, metallic artefacts caused by frequencies exceeding the Nyquist limit. Cure: keep recording levels as high as possible; use a low-pass filter after Simpliciter when working at extreme speed reductions; or embrace the aliasing as a deliberate effect.

*Clicks.* In VCV Rack these most commonly occur at loop join points in Simpliciter, or from abrupt parameter changes while audio is running. The CLICK knob on Simpliciter is a transient smoother specifically for loop join clicks — adjust it by ear. For other clicks, avoid making abrupt cable connections or disconnections while audio is live.

*Fragments of previous recordings.* Simpliciter's audio persists in its .wav file until overwritten. If you reuse a recording slot without clearing it, remnants of old material may appear. The only reliable cure: clear the recording slot before beginning new work.

## Distortion

Either through faulty equipment or through overloading your audio chain, a sound can become harshly distorted by digital clipping. Different sounds tend to converge when clipped in this manner, and the result is rarely useful. Cure: watch your mixer levels and the metering on your Audio OUT module, and keep peaks out of the red.

This is a different matter from the warmth produced by running audio through ChowTape or a similar saturation module. That kind of distortion is deliberate and controlled. Digital clipping is not.

## Storage

Every recordist knows the importance of keeping materials organised and clearly labelled. On tape this meant marked boxes on a shelf. In VCV Rack it means looking after two kinds of file: your patch (a `.vcv` file storing module layout, settings and connections) and the audio recordings Simpliciter saves as separate `.wav` files in the same folder.

Keep everything together. The simplest approach is to create a dedicated folder for each project and make sure both your patch and Simpliciter's recordings are saved there. If you move the patch without its `.wav` files, Simpliciter will find nothing to load.

Name your files clearly. `patch1.vcv` and `recording_001.wav` will confuse you six weeks from now. `rain-drone-study-01.vcv` and `metal-impact-slow.wav` tell you what is inside.

Keep backups. VCV patches are tiny; a few minutes of 24-bit audio is still under 100 megabytes. Copy everything to an external drive or cloud storage. Losing work to a hard drive failure is avoidable.

## Working in VCV Rack

A few practical matters that have no tape-era equivalent but are worth knowing.

*CPU.* VCV Rack computes every module in real time. If the CPU meter in the top toolbar climbs above 70–80 percent, you will hear dropouts. Bypass modules you are not using (right-click → Bypass). If dropouts persist, increase the audio buffer size in Engine → Audio Settings from 128 to 256 or 512 samples; the added latency is negligible for studio work.

*Patch layout.* A patch you cannot read is a patch you cannot modify confidently. Place sources on the left, processing in the middle, outputs on the right. Group modules that belong to the same voice or channel. Use text labels to mark sections.

*Exporting.* When a piece is finished, add the Recorder module (from the Fundamental pack) or the NYSTHI Master Recorder, connect your master output, and record to a .wav file. Use 44.1kHz or 48kHz sample rate and 24-bit depth. Make sure the session sample rate (Engine → Audio Settings) matches the rate of your recordings; mixing 44.1kHz and 48kHz files causes subtle pitch discrepancies.

## Time Taken

This is just a word of encouragement. Dwyer found that for every minute of playing time in the final result, about one hour's work was necessary, on the average. Possibly you are doing better. There are good days and bad days. Sometimes, in spite of repeated attempts, you cannot get what you want and have to accept less. We can gain further consolation by reflecting that conventional live music has to be composed, the parts copied or printed, rehearsed (perhaps many times) and finally performed. Its practitioners are no better off than us, and at least when we have finished, we have finished. Live music has to be recreated at each performance.

A few habits that cost almost nothing but pay back considerably:

**Keep a notebook.** A plain text file alongside your patches. Write down what you tried, what sounds you used, what worked and what didn't. Note the settings that produced an interesting result. You will not remember in two weeks. Write it down now.

**Listen on different equipment.** A piece that sounds brilliant through studio headphones may sound muddled through laptop speakers. Check your work on multiple playback systems before considering it finished.

**Rest before revising.** Critical listening requires fresh ears. If you have been working on a piece for two hours, you are no longer hearing it accurately. Save it, close VCV Rack, and listen again tomorrow. You will hear things you could not hear while you were inside the work.
