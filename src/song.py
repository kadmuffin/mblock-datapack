import pynbs
from .utils import *
from .x_axis import x_data


class song(object):
    """This class manages notes data."""

    def __init__(self, header=None, file_name=""):
        super(song, self).__init__()
        self.data = []
        self.metadata = metadata(header,file_name)

    def push_dict(self, dict, tuple_pos=(0, 0)):
        """Adds a dictionary on a specified position"""
        x, y = tuple_pos

        while x >= len(self.data):
            self.data.append(x_data(0))

        while y >= len(self.data[x].blocks):
            self.data[x].blocks.append([])

        self.data[x].blocks[y].append(dict)

        pass

    def set_dict(self, dict, tuple_pos=(0, 0, 0)):
        """Changes a dictionary on a specified position"""
        x, y, z = tuple_pos

        while x >= len(self.data):
            self.data.append(x_data(0))

        while y >= len(self.data[x].blocks):
            self.data[x].blocks.append([])

        self.data[x].blocks[y][z] = dict
        pass

    def get_notes(self, raw_nbs, align=False, layers=True):
        """Parses chords and converts them to notes"""
        y_size = 1
        z_size = 0
        for tick, chord in raw_nbs:
            z_size = tick - 1
            if not layers and y_size < len(chord):
                y_size = len(chord)

            for index, note in enumerate(chord):

                if layers and any([note.layer == axis.instrument for axis in self.data]):
                    for axis in self.data:
                        if note.layer == axis.instrument:
                            axis.append_note(convert_note(note), tick, 0)

                    continue


                if not layers and any([note.instrument == axis.instrument for axis in self.data]):
                    for axis in self.data:
                        if note.instrument == axis.instrument:
                            axis.append_note(convert_note(note), tick, index)

                    continue

                self.data.append(x_data(note.layer if layers else note.instrument))
                self.data[-1].append_note(convert_note(note), tick, 0)
                # self.data[-1].blocks[0].append(convert_note(note))
                pass

        if align:
            self.metadata.xsize = len(self.data) // 2

            for i in range(self.metadata.xsize - 1):
                self.data.insert(0, [])
        else:
            self.metadata.xsize = len(self.data) // 2
            if (self.metadata.xsize % 2 == 0):
                self.metadata.xsize += 1
            
            self.metadata.length = z_size
            self.metadata.ysize = y_size

    def generate_give(self):
        """Creates a command for your song"""
        if not self.metadata.xsize > 0:
            self.metadata.xsize = len(self.data)
        return (
                'give @s minecraft:enchanted_book{display:{Name:"\\"\u00c2\u00a75%s\\"",Lore:["\\"\u00c2\u00a76Song BPM:\\"","\\"\u00c2\u00a79%s\\"","\\"\u00c2\u00a76Size:\\"","\\"\u00c2\u00a79%s - %s - %s\\"","\\"\u00c2\u00a76NBS File:\\"","\\"\u00c2\u00a7aTrue\\""]}, contains_song:1b, song:{xsize:%s,ysize:%s,zsize:%s,bpm:%s, nbs_bpm: 1b}, data:{events:[],notes:%s}}'
            % (
                self.metadata.name,
                self.metadata.bpm,
                self.metadata.xsize,
                self.metadata.ysize,
                self.metadata.length,
                self.metadata.xsize,
                self.metadata.ysize,
                self.metadata.length,
                self.metadata.bpm,
                self.data,
            )
        )
