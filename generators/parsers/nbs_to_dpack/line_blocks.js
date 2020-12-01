class LineBlocks {
  constructor(instrument) {
    this.blocks = [
      [],
    ];
    this.instrument = instrument;
    this.tick = [-1];
  }

  appendNote(note, tick, index) {
    this.fixTickIndex(index);
    this.appendSpacing(tick, index);

    if (note.key > 8 && note.key < 82) {
      this.blocks[index].push({
        tone: note.key - 33,
        sound: note.instrument,
      });

      return;
    }

    this.blocks[index].push({
      tone: -1,
    });
  }

  fixTickIndex(index) {
    if (index >= this.blocks.length) {
      for (let i = 0; i < index; i += 1) {
        this.blocks.push([]);
        this.tick.push(-1);
      }
    }
  }

  appendSpacing(newTick, index) {
    const spacing = newTick - this.tick[index] - 1;
    if (spacing > 0) {
      this.blocks[index].push({
        air: spacing,
      });
    }
    this.tick[index] = newTick;
  }
}

// eslint-disable-next-line func-names
LineBlocks.prototype.toJSON = function () {
  return this.blocks;
};

export default LineBlocks;
