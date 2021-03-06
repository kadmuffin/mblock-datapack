import os
import pynbs


def convert_note(note):
    """Limit the note and tries to convert it"""
    if note.key > 8 and note.key < 82:
        if note.instrument > 0:
            return {"tone": note.key - 33, "sound": note.instrument}
        return {"tone": note.key - 33}


def create_datapack(target_path, datapack_name, input_file, nbs_song):
    pack_dir = os.path.join("./", datapack_name)

    datapack_dir = os.path.join(pack_dir, "data/%s/functions" % datapack_name)

    os.makedirs(datapack_dir, exist_ok=True)

    if not os.path.exists(pack_dir + "/pack.mcmeta"):
        with open(pack_dir + "/pack.mcmeta", "w") as file:
            file.write(
                str(
                    {
                        '"pack"': {
                            '"pack_format"': 6,
                            '"description"': '"\u00c2\u00a77MusicBlocks: \u00c2\u00a79Exported NBS files!"',
                        }
                    }
                ).replace("'", "")
            )

    with open(os.path.join(datapack_dir, input_file) + ".mcfunction", "w") as file:
        file.write(nbs_song.generate_give())
    pass


class metadata(object):
    """This class manages pynbs data."""

    def __init__(self, header, file_name):
        super(metadata, self).__init__()

        self.loop = False
        self.name = ""
        self.bpm = 90
        self.tempo = 4.5
        self.artist = ""
        self.length = 0
        # Updated on song.py by get_notes()
        self.xsize = 1
        self.ysize = 1
        self.time_signature = 4

        if header != None:
            self.loop = header.loop
            self.name = header.song_name
            if self.name == "":
                self.name = file_name
            self.bpm = int(header.tempo * 20)
            self.tempo = header.tempo
            self.artist = header.song_author
            self.length = header.song_length
            self.time_signature = header.time_signature
