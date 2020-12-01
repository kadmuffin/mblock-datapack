/* eslint-disable camelcase */
import { saveAs } from 'file-saver';
import MidiWriter from 'midi-writer-js';

const sounds = [
  1, // Harp
  33, // Bass
  40, // Snare
  37, // Click
  36, // Kick
  10, // Bell
  76, // Flute
  15, // Chimes
  26, // Guitar
  14, // Xylophone
  12, // Iron Xylophone
  56, // Cow Bell
  58, // Didgeridoo
  5, // Bit
  106, // Banjo
  3]; // Pling

const channels = [
  1, 1, 10, 10, 10, 1, 2, 1, 1, 1, 1, 10, 1, 1, 1, 1,
];

async function save(track, name) {
  saveAs(new Blob([new MidiWriter.Writer(track).buildFile()]), `${name}.mid`);
}

function parseNotesMidi(nbt, name) {
  const {
    bpm, comp_bpm, nbs_bpm, gb_sound,
  } = nbt.song;
  const { notes } = nbt.data;

  let { signature } = nbt.song;
  if (signature == null) signature = [4, 4];

  const song = new MidiWriter.Track();
  song.setTempo(nbs_bpm ? bpm * 1.3333 : bpm);
  song.setTimeSignature(signature[0], signature[1]);
  song.polyModeOn();

  notes.forEach((x) => {
    x.forEach((y) => {
      let index = 0;
      // eslint-disable-next-line no-restricted-syntax
      for (const note of y) {
        if (note.air != null) {
          index += note.air;
        }
        if (note.tone != null) {
          const key = note.tone;
          let sound = note.sound != null && note.sound <= 15 ? note.sound : 0;
          sound = gb_sound >= 0 && note.sound == null ? gb_sound : sound;

          song.addEvent(new MidiWriter.ProgramChangeEvent({ instrument: sounds[sound] }));

          song.addEvent(new MidiWriter.NoteEvent({
            startTick: index * 48,
            pitch: key + 54,
            duration: 'T48',
            velocity: 100,
            channel: channels[sound],
          }));
          index += comp_bpm ? 2 : 1;
        }
      }
    });
  });

  save(song, name);
}

// eslint-disable-next-line import/prefer-default-export
export { parseNotesMidi };
