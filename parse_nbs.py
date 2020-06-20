import click
import pynbs

def generate_give(song_name, bpm, notes):
    """Creates a command for your song"""
    return 'give @s minecraft:enchanted_book{display:{Name:"\\"\u00c2\u00a75%s\\"",Lore:["\\"\u00c2\u00a76Song BPM:\\"","\\"\u00c2\u00a79%s\\"","\\"\u00c2\u00a76Travel Time:\\"","\\"\u00c2\u00a79%s\\"","\\"\u00c2\u00a76NBS File:\\"","\\"\u00c2\u00a7aTrue\\""]}, contains_song:1b, song:{xsize:%s,ysize:%s,zsize:%s,bpm:%s}, data:{events:[],notes:%s}}' % (song_name, bpm, len(notes[-1][0]), len(notes),len(notes[-1]),len(notes[-1][0]),bpm,notes)

def tick_to_spacing(last_tick,tick):
    """Returns an object with the air spaces"""
    oper = tick-last_tick
    return {"air": oper}

def parse_note(note):
    """Parses a note from a nbs file"""
    # Vanilla range is between 33 and 57 notes
    if note.key > 32 and note.key < 58:
        tone = note.key - 33
        sound = note.instrument
        if sound > 0:
            return {"tone": tone, "sound": sound}
        return {"tone": tone}


def parse_notes(song,tick_dif):
    """Returns a list with all the notes parsed"""
    notes = [[[]]]
    last_tick = [[0]] # Stores the last tick for each y line
    last_chord_len = 0

    for tick, chord in song:

        while len(last_tick) <= len(notes)+1:
            last_tick.append([0])

        for j in range(0,len(notes)):
            for i in range(0,len(notes[j])):
                while len(last_tick[j]) <= i+1:
                    last_tick[j].append(0)

                spacing = tick_to_spacing(last_tick[j][i],tick)
                last_tick[j][i] = tick
                if spacing['air'] > tick_dif:
                    notes[j][i].append(spacing)

        for i in range(0, len(chord)):

            while chord[i].instrument >= len(notes):
                notes.append([])

            while i >= len(notes[chord[i].instrument]):
                notes[chord[i].instrument].append([])

            notes[chord[i].instrument][i].append(parse_note(chord[i]))

        last_chord_len = len(chord)+1

    return notes

def parse_metadata(song):
    """Returns a object with the song metadata"""
    pass

@click.command()
@click.option('--input_file', help='The path to your NoteBlock Studio file (.nbs).')
@click.option('--output_path', default=".",
              help='The path used at exporting the song .mcfunction file.')
@click.option('--tick_diff', default=-1, help='Sets the minimum difference between ticks to add a space (Default=0, Auto=-1).')
def main(input_file,output_path,tick_diff):

    print("Loading song...")

    song = pynbs.read(input_file)

    #metadata = parse_metadata(song)

    print("Getting tick difference.")

    spacing_rate = tick_diff

    if tick_diff == -1:
        print("Using Auto Mode!")
        spacing_rate = song.header.time_signature - 1

    print("Tick Diff: " + str(spacing_rate))


    print("Parsing Notes...")

    notes = parse_notes(song,spacing_rate)

    print("Generating Give and Saving...")
    command = generate_give(input_file,int(song.header.tempo * 20), notes)

    # Make sure this path exists!
    with open("%s/get_%s.mcfunction" % (output_path,input_file),"w") as file:
        file.write(command.strip("'"))

    print("Done!")

if __name__ == '__main__':
    main()
