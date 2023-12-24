
# Optimized-Beacon-Bonus - 1.20.2

This is a a simple Minecraft data pack that allows the Beacon to effect entities given a custom list of entities. 

## Features:

 - Custom entity whitelist.
 - Editable ranges.
 - No advancements.


## Configuration:

Change the frequently entities near each beacon will recive effects.
 - `/data modify storage blue:beacon frequency.ticks set value (ticks)` - Defualt `80 (4 seconds)`

Chooses if the effects entities gain from beacons should create particles.
 - `/data modify storage blue:beacon main.particles set value "true"` - `"true"` is hidden, `"false"` is shown.

The following options let you manually decide the exact range and duration for all 4 levels (for entities).
```
/data modify storage blue:beacon main.lvl1Range set value "20"
/data modify storage blue:beacon main.lvl1Duration set value "11"
```
```
/data modify storage blue:beacon main.lvl2Range set value "30"
/data modify storage blue:beacon main.lvl2Duration set value "13"
```
```
/data modify storage blue:beacon main.lvl3Range set value "40"
/data modify storage blue:beacon main.lvl3Duration set value "15"
```
```
/data modify storage blue:beacon main.lvl4Range set value "50"
/data modify storage blue:beacon main.lvl4Duration set value "17"
```

Change the list of tiles allowed for becons to passthrough
 - `tags\blocks\most_beacon_passable.json` - All json entrees must use the `minecraft:` header.

## Editing the whitelist:

You can find the whitelist within `tags\entity_types\beacon_buffs.json` and can add or remove any desired mobs. All json entrees must use the `minecraft:` header.
```
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

Huge shoutout to [@ActuallyBlue](https://github.com/ActuallyBlue/) for creating this project and allowing me to archive it publicly here on GitHub. 
