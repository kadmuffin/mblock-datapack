/* eslint-disable camelcase */
import { saveAs } from 'file-saver';
import * as jsnbs from 'jsnbs';

async function save(nbsFile, name) {
  saveAs(new Blob([await nbsFile.writeBuffer()]), `${name}.nbs`);
}
function parseNotes(nbt, name) {
  const {
    bpm, comp_bpm, nbs_bpm, gb_sound, signature,
  } = nbt.song;
  const { notes } = nbt.data;
  const layers = {};
  let biggest = 0;

  const song = jsnbs.newFile(new jsnbs.Header({
    tempo: bpm / 20,
    time_signature: signature == null ? 4 : signature[1],
    auto_save: true,
  }));

  notes.forEach((x, x_index) => {
    x.forEach((y, y_index) => {
      let index = 0;
      // eslint-disable-next-line no-restricted-syntax
      for (const note of y) {
        if (note.air != null) {
          index += note.air;
        }
        if (note.tone != null) {
          const key = note.tone;

          if (!((`${x_index + y_index}`) in layers)) {
            layers[`${x_index + y_index}`] = biggest;
            biggest += 1;
          }

          song.notes.push(new jsnbs.Note({
            tick: index,
            layer: layers[`${x_index + y_index}`],
            key: key + 33,
            instrument: gb_sound >= 0 && note.sound == null ? gb_sound : note.sound,
          }));
          index += comp_bpm ? 2 : 1;
        }
      }
    });
  });

  save(song, name);
}

// eslint-disable-next-line import/prefer-default-export
export { parseNotes };
