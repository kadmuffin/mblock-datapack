def parse_note(note):
    """Parses a note from a nbs file"""
    # Vanilla range is between 33 and 57 notes
    if note.key > 32 and note.key < 58:
        tone = note.key - 33
        sound = note.instrument
        if sound > 0:
            return {"tone": tone, "sound": sound}
        return {"tone": tone}
