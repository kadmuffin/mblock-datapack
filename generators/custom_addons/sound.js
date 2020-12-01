import { saveAs } from 'file-saver';
import JSZip from 'jszip';

function exportSettings(settings) {
  const configs = {
    packID: settings.packID,
    data: [],
  };
  for (let i = 0; i < settings.data.length; i += 1) {
    configs.data.push({
      sound: settings.data[i].sound,
      block: settings.data[i].block,
      volume: settings.data[i].volume,
      distance: settings.data[i].distance,
    });
  }

  return JSON.stringify(configs);
}

function playTree(pack, {
  path, functionPath, sound, volume, distance, toneScore,
}) {
  let file = '';
  let mainFile = '';
  let lastValue = 0;
  const entity = `@a${distance > 0 ? `[distance=0..${distance}]` : ''}`;

  for (let i = 0; i <= 24; i += 1) {
    // eslint-disable-next-line no-restricted-properties
    const pitch = Math.round((Math.pow(2, ((i - 12) / 12)) + Number.EPSILON) * 1e7) / 1e7;

    file = file.concat(`execute if score ${toneScore} _mbtmp matches ${i} run playsound ${sound} block ${entity} ~ ~ ~ ${volume[1]} ${pitch} ${volume[0]}\n`);

    if (i % 4 === 0 && i > 0) {
      pack.file([`${path}/${i}.mcfunction`], file);

      file = '';
      mainFile = mainFile.concat(`execute if score ${toneScore} _mbtmp matches ${lastValue}..${i} run function ${functionPath}/${i}\n`);
      lastValue = i;
    }
  }

  return mainFile;
}

function packAllOctaves(pack, functionPath, sound, path) {
  pack.file([`${path}/tree/0.mcfunction`], playTree(pack, {
    path: `${path}/tree/0`,
    functionPath: `${functionPath}/0`,
    sound: sound.sound,
    volume: sound.volume,
    distance: sound.distance,
    toneScore: '#tone',
  }));

  const mFile = playTree(pack, {
    path: `${path}/tree/-1`,
    functionPath: `${functionPath}/-1`,
    sound: `${sound.sound}_-1`,
    volume: sound.volume,
    distance: sound.distance,
    toneScore: '#t_tone',
  });

  pack.file([`${path}/tree/-1.mcfunction`], `scoreboard players operation #t_tone _mbtmp = #tone _mbtmp\nscoreboard players add #t_tone _mbtmp 24\n${mFile}`);

  const mFile1 = playTree(pack, {
    path: `${path}/tree/1`,
    functionPath: `${functionPath}/1`,
    sound: `${sound.sound}_1`,
    volume: sound.volume,
    distance: sound.distance,
    toneScore: '#t_tone',
  });

  pack.file([`${path}/tree/1.mcfunction`], `scoreboard players operation #t_tone _mbtmp = #tone _mbtmp\nscoreboard players remove #t_tone _mbtmp 24\n${mFile1}`);
}

async function saveData(pack, name) {
  const data = await pack.generateAsync({ type: 'blob' });
  saveAs(data, name);
}

function createPack(packName, sounds) {
  const files = ['', '', '', []];
  const pack = new JSZip();
  pack.folder('data/minecraft/tags/functions');
  pack.folder('data/mb_plugin/tags');
  pack.folder(`data/${packName}/functions`);
  pack.file([`data/${packName}/functions/load.mcfunction`], `tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Sound Addon Loaded: ", "color":"blue"},{"text": "${packName.replace('_', ' ')}.","color":"aqua"}]`);

  for (let id = 0; id < sounds.data.length; id += 1) {
    pack.folder(`data/${packName}/functions/x_private/${id}/tree`);

    packAllOctaves(pack, `${packName}:x_private/${id}/tree`, sounds.data[id], `data/${packName}/functions/x_private/${id}`);

    pack.file([`data/${packName}/functions/x_private/${id}/play.mcfunction`], `execute if score #tone _mbtmp matches -24..-1 run function ${packName}:x_private/${id}/tree/-1\nexecute if score #tone _mbtmp matches 0..24 run function ${packName}:x_private/${id}/tree/0\nexecute if score #tone _mbtmp matches 25..48 run function ${packName}:x_private/${id}/tree/1`);

    files[0] = files[0].concat(`execute if score #sound _mbtmp matches ${id + sounds.packID} run function ${packName}:x_private/${id}/play\n`);
    files[1] = files[1].concat(`execute if score #sound _mbtmp matches ${id + sounds.packID} run setblock ~ ~ ~ ${sounds.data[id].block}\n`);
    files[2] = files[2].concat(`execute if block ~ ~ ~ ${sounds.data[id].block} run scoreboard players set #sound _mbtmp ${id + sounds.packID}\n`);
    files[3].push(sounds.data[id].block);
  }

  pack.file([`data/${packName}/functions/play.mcfunction`], `execute if score #sound _mbtmp matches ${sounds.data.length > 0 ? `${sounds.packID}..${sounds.packID + sounds.data.length}` : sounds.packID} run function ${packName}:x_private/play`);
  pack.file([`data/${packName}/functions/x_private/play.mcfunction`], files[0]);
  pack.file([`data/${packName}/functions/set.mcfunction`], files[1]);
  pack.file([`data/${packName}/functions/get.mcfunction`], files[2]);
  pack.file(['data/mblock/tags/blocks/soundable.json'], `{"values": ${JSON.stringify(files[3])}}`);
  pack.file(['data/mb_plugin/tags/functions/sound/play.json'], `{"values": ["${packName}:play"]}`);
  pack.file(['data/mb_plugin/tags/functions/sound/set.json'], `{"values": ["${packName}:set"]}`);
  pack.file(['data/mb_plugin/tags/functions/sound/get.json'], `{"values": ["${packName}:get"]}`);

  pack.file(['data/minecraft/tags/functions/load.json'], `{"values": ["${packName}:load"]}`);

  pack.file(['pack.mcmeta'], JSON.stringify({
    pack: {
      pack_format: 6,
      description: `§7MusicBlocks: §aCustom Sounds (${packName}).`,
    },
  }));

  pack.file(['sounds_settings.json'], exportSettings(sounds));

  saveData(pack, `mblock_${packName}.zip`);
}

// eslint-disable-next-line import/prefer-default-export
export { createPack };
