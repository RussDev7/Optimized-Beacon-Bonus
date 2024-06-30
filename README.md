# Universal Beacons Datapack - 1.20.2+

This is a a simple, customizable Minecraft data pack that lets Beacons apply effects to more than just players. 

## Features:

 - Identical to a regular beacon
 - Almost every value is customizable
 - No advancements, commands, sounds, or popups.
 - Custom entity whitelist(s).
 - Copper Block foundation support

## Configuration:

Change how frequently whitelisted entities near each beacon will receive effects.
 - `/data modify storage blue:data beacon.value.frequency set value 80` - 20 = 1 second

Chooses if the entities with effects granted by this datapack will emit particles or not
 - `/data modify storage blue:data beacon.value.hideParticles set value "true"` - `"true"` is hidden, `"false"` is shown.

The following options let you manually decide the exact range and duration for all 4 levels (for whitelisted entities).
```
/data modify storage blue:data beacon.value.lvl1Range set value 20
/data modify storage blue:data beacon.value.lvl1Duration set value 11
```
```
/data modify storage blue:data beacon.value.lvl2Range set value 30
/data modify storage blue:data beacon.value.lvl2Duration set value 13
```
```
/data modify storage blue:data beacon.value.lvl3Range set value 40
/data modify storage blue:data beacon.value.lvl3Duration set value 15
```
```
/data modify storage blue:data beacon.value.lvl4Range set value 50
/data modify storage blue:data beacon.value.lvl4Duration set value 17
```

Add or remove from the list of blocks that effects will be given through
 - `blue\tags\blocks\beacon\passable.json`
```json
{
  "values": [
    "minecraft:cake",
    "minecraft:snow",
    "minecraft:fern",
    "minecraft:lava",
    "minecraft:vine",
    "minecraft:ice",
    "minecraft:air"
  ]
}
```

## Custom beacon foundation:

Add to the list of blocks allowed as a beacon's foundation
 - `minecraft\tags\blocks\beacon_base_blocks.json`
```json
{
  "values": [
    "minecraft:waxed_weathered_copper",
    "minecraft:waxed_oxidized_copper",
    "minecraft:waxed_exposed_copper",
    "minecraft:waxed_copper_block",
    "minecraft:weathered_copper",
    "minecraft:oxidized_copper",
    "minecraft:exposed_copper",
  ]
}
```

## Editing a whitelist:

You can add or find the custom whitelist within `blue\tags\entity_types\beacon\custom.json` and can add or remove any desired entities.
```json
{
  "values": [
    "minecraft:cat",
    "minecraft:cow",
    "minecraft:pig",
    "minecraft:bat",
    "minecraft:fox",
    "minecraft:pig",
    "minecraft:bee"
  ]
}
```

## Credits:

Huge shoutout to [@ActuallyBlue](https://github.com/ActuallyBlue) for creating this project and allowing me to archive it publicly here on GitHub.
