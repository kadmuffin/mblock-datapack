import os
import click
import pynbs
from src import song
from src import create_datapack


@click.command()
@click.option(
    "--target_path", default=".", help="The path that defines where export the song."
)
@click.option(
    "--datapack",
    default=False,
    help="Sets if the code should create a datapack folder for the song. (Default : False)",
)
@click.option(
    "--datapack_name",
    default="exported",
    help="Sets the datapack folder name.  (Default : 'exported')",
)
@click.option(
    "--align_data",
    default=False,
    help="Aligns the data to the center (Default : True)",
)
@click.argument("input_file")
def main(target_path, datapack, datapack_name, align_data, input_file):

    raw_data = pynbs.read(input_file)

    nbs_song = song(raw_data.header)

    align_data_ = False
    if (align_data is str and str.lower(align_data) == "true") or align_data:
        align_data_ = True

    nbs_song.get_notes(raw_data, align_data_)

    if (datapack is str and str.lower(datapack) == "true") or datapack:
        create_datapack(target_path, datapack_name, input_file, nbs_song)
        return

    with open(os.path.join(target_path, input_file + ".mcfunction"), "w") as file:
        file.write(nbs_song.generate_give())

    pass


if __name__ == "__main__":
    main()
    pass
