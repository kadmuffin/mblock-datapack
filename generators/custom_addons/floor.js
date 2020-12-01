import { saveAs } from 'file-saver';
import JSZip from 'jszip';

function exportSettings(settings) {
  const configs = {
    packID: settings.packID,
    data: [],
  };
  for (let i = 0; i < settings.data.length; i += 1) {
    configs.data.push({
      floor: settings.data[i].floor,
      signature_a: settings.data[i].signature_a,
      signature_b: settings.data[i].signature_b,
    });
  }

  return JSON.stringify(configs);
}

async function saveData(pack, name) {
  const data = await pack.generateAsync({ type: 'blob' });
  saveAs(data, name);
}

function createPack(packName, floor) {
  const files = ['', '', ''];
  const pack = new JSZip();
  pack.folder('data/minecraft/tags/functions');
  pack.folder('data/mb_plugin/tags');
  pack.folder(`data/${packName}/functions`);
  pack.folder(`data/${packName}/functions/x_private`);
  pack.file([`data/${packName}/functions/load.mcfunction`], `tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Floor Addon Loaded: ", "color":"blue"},{"text": "${packName.replace('_', ' ')}.","color":"aqua"}]`);

  for (let id = 0; id < floor.data.length; id += 1) {
    files[0] = files[0].concat(`execute if score @s mb.floor matches ${id + floor.packID} run setblock ~ ~-1 ~ ${floor.data[id].floor}\n`);
    files[1] = files[1].concat(`execute if score @s mb.floor matches ${id + floor.packID} run setblock ~ ~-1 ~ ${floor.data[id].signature_a}\n`);
    files[2] = files[2].concat(`execute if score @s mb.floor matches ${id + floor.packID} run setblock ~ ~-1 ~ ${floor.data[id].signature_b}\n`);
  }

  pack.file([`data/${packName}/functions/floor.mcfunction`], `execute if score @s mb.floor matches ${floor.data.length > 0 ? `${floor.data.length > 0 ? `${floor.packID}..${floor.packID + floor.data.length}` : floor.packID}` : floor.packID} run function ${packName}:x_private/floor`);
  pack.file([`data/${packName}/functions/signature_a.mcfunction`], `execute if score @s mb.floor matches ${floor.data.length > 0 ? `${floor.packID}..${floor.packID + floor.data.length}` : floor.packID} run function ${packName}:x_private/signature_a`);
  pack.file([`data/${packName}/functions/signature_b.mcfunction`], `execute if score @s mb.floor matches ${floor.data.length > 0 ? `${floor.packID}..${floor.packID + floor.data.length}` : floor.packID} run function ${packName}:x_private/signature_b`);

  pack.file([`data/${packName}/functions/x_private/floor.mcfunction`], files[0]);
  pack.file([`data/${packName}/functions/x_private/signature_a.mcfunction`], files[1]);
  pack.file([`data/${packName}/functions/x_private/signature_b.mcfunction`], files[2]);

  pack.file(['data/mb_plugin/tags/functions/floor/main.json'], `{"values": ["${packName}:floor"]}`);
  pack.file(['data/mb_plugin/tags/functions/floor/signature_a.json'], `{"values": ["${packName}:signature_a"]}`);
  pack.file(['data/mb_plugin/tags/functions/floor/signature_b.json'], `{"values": ["${packName}:signature_b"]}`);

  pack.file(['data/minecraft/tags/functions/load.json'], `{"values": ["${packName}:load"]}`);

  pack.file(['pack.mcmeta'], JSON.stringify({
    pack: {
      pack_format: 6,
      description: `§7MusicBlocks: §aCustom Floors (${packName}).`,
    },
  }));

  pack.file(['floor_settings.json'], exportSettings(floor));

  saveData(pack, `mblock_${packName}.zip`);
}

// eslint-disable-next-line import/prefer-default-export
export { createPack };
