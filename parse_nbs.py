import os
import click
import pynbs
from src import song
from src import create_datapack


@click.command()
@click.option(
        "--input_file", default=click.File('r'), help="The File to parse.")
@click.option(
    "--target_path", default=".", help="The path that defines where export the song datapack."
)
@click.option(
    "--datapack_name",
    default="exported",
    help="Sets the datapack folder name.  (Default : 'exported')",
    )

@click.option("--layers", default=1, help="Controls if the parsed music is flat or 3D")

def main(input_file, target_path, datapack_name, layers):

    raw_data = pynbs.read(input_file)

    nbs_song = song(raw_data.header, input_file)

    nbs_song.get_notes(raw_data, False, True if layers >= 1 else False)

    create_datapack(target_path, datapack_name, input_file, nbs_song)


if __name__ == "__main__":
    main()
    pass
