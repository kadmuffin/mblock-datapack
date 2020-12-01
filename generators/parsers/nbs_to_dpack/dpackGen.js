import { saveAs } from 'file-saver';
import JSZip from 'jszip';

async function saveData(pack, name) {
  const data = await pack.generateAsync({ type: 'blob' });
  saveAs(data, name);
}

function createPack(packName, songs) {
  let listSongs = '';
  const pack = new JSZip();
  pack.folder('data/minecraft/tags/functions');
  pack.folder(`data/${packName}/functions`);
  pack.folder(`data/${packName}/functions/songs`);

  for (let i = 0; i < songs.length; i += 1) {
    pack.file([`data/${packName}/functions/songs/${songs[i].name}.mcfunction`], songs[i].data);
    listSongs = listSongs.concat(`tellraw @a ["",{"text":" - ", "color": "green"},{"text":"${songs[i].name}","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function ${packName}:songs/${songs[i].name}"}}]\n`);
  }

  pack.file([`data/${packName}/functions/list.mcfunction`], listSongs);
  pack.file([`data/${packName}/functions/init.mcfunction`], `tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Songs Loaded: ","color":"green"},{"text":"${packName}.","color":"aqua","italics":"true","bold":"true","hoverEvent":{"action":"show_text","value":"Click to List Songs!"},"clickEvent":{"action":"run_command","action":"/function ${packName}:list"}}]`);
  pack.file(['data/minecraft/tags/functions/load.json'], `{"values": ["${packName}:init"]}`);

  pack.file(['pack.mcmeta'], JSON.stringify({
    pack: {
      pack_format: 6,
      description: `§7MusicBlocks: §aCustom Songs (${packName}).`,
    },
  }));

  saveData(pack, `mblock_${packName}.zip`);
}

// eslint-disable-next-line import/prefer-default-export
export { createPack };
