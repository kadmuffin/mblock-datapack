import pynbs
from .utils import *
from .x_axis import x_data


class song(object):
    """This class manages notes data."""

    def __init__(self, header):
        super(song, self).__init__()
        self.data = []
        self.metadata = metadata(header)

    def get_notes(self, raw_nbs, align=True):
        for tick, chord in raw_nbs:

            for index, note in enumerate(chord):

                if any([note.instrument == axis.instrument for axis in self.data]):
                    for axis in self.data:
                        if note.instrument == axis.instrument:
                            axis.append_note(convert_note(note), tick, index)

                    continue

                self.data.append(x_data(note.instrument))
                self.data[-1].append_note(convert_note(note), tick, 0)
                # self.data[-1].blocks[0].append(convert_note(note))
                pass

        if align:
            self.metadata.xsize = len(self.data) // 2

            for i in range(self.metadata.xsize):
                self.data.insert(0, [])
        else:
            self.metadata.xsize = len(self.data)

        self.metadata.length = len(self.data[-1][0])


    def generate_give(self):
        """Creates a command for your song"""
        return (
            'give @s minecraft:enchanted_book{display:{Name:"\\"\u00c2\u00a75%s\\"",Lore:["\\"\u00c2\u00a76Song BPM:\\"","\\"\u00c2\u00a79%s\\"","\\"\u00c2\u00a76Size:\\"","\\"\u00c2\u00a79%s - %s - %s\\"","\\"\u00c2\u00a76NBS File:\\"","\\"\u00c2\u00a7aTrue\\""]}, contains_song:1b, nbs_file:1b, song:{xsize:%s,ysize:%s,zsize:%s,bpm:%s}, data:{events:[],notes:%s}}'
            % (
                self.metadata.name,
                self.metadata.bpm,
                self.metadata.xsize,
                len(self.data[-1].blocks),
                self.metadata.length,
                self.metadata.xsize,
                len(self.data[-1].blocks),
                self.metadata.length,
                self.metadata.bpm,
                self.data,
            )
        )
