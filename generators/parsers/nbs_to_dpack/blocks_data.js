import LineBlocks from './line_blocks';

class BlocksData {
  constructor() {
    this.data = [];
  }

  parseNotes(tick, notes, isFlat = false) {
    for (let i = 0; i < notes.length; i += 1) {
      const dataIndex = BlocksData.findPos(this.data, notes[i], isFlat);

      if (dataIndex >= 0) {
        this.appendNote(dataIndex, notes[i], tick, isFlat ? 0 : i);
      } else {
        this.data.push(new LineBlocks(isFlat ? notes[i].layer : notes[i].instrument));
        this.appendNote(this.data.length - 1, notes[i], tick);
      }
    }
  }

  alignData() {
    let xsize = Math.round(this.data.length / 2);

    if (xsize % 2 === 0) {
      xsize += 1;
    }

    return xsize;
  }

  appendNote(index, note, tick, ypos = 0) {
    this.data[index].appendNote(note, tick, ypos);
  }

  static findPos(data, note, isFlat) {
    if (isFlat) {
      return data.findIndex((axis) => axis.instrument === note.layer);
    }
    return data.findIndex((axis) => axis.instrument === note.instrument);
  }

  static findDataIndex(data, instrument) {
    return data.findIndex((axis) => axis.instrument === instrument);
  }
}

// eslint-disable-next-line func-names
BlocksData.prototype.toJSON = function () {
  return this.data;
};

export default BlocksData;
