class x_data(object):
    """Manages data on the YZ Axis."""

    def __init__(self, instrument):
        super(x_data, self).__init__()
        self.blocks = [[]]
        self.instrument = instrument
        self.tick = [-1]

    def __str__(self):
        return str(self.blocks)

    def __repr__(self):
        return str(self.blocks)

    def append_note(self, note, tick, index):
        if index >= len(self.blocks):
            self.blocks.extend([] for i in range(index))
            self.tick.extend(-1 for i in range(index))

        self._append_spacing(tick, index)

        self.blocks[index].append(note)

    def _append_spacing(self, new_tick, index):
        spacing = (new_tick - self.tick[index]) - 1

        if spacing > 0:
            self.blocks[index].append({"air": spacing})

        self.tick[index] = new_tick

    def append_storage(self):
        self.blocks.append([])
        self.tick.append(0)
