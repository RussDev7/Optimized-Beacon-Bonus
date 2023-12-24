
# Optimized-Beacon-Bonus - 1.20.2

This is a a simple Minecraft data pack that allows the Beacon to effect entities given a custom list of entities. 

## Features:

 - Custom entity whitelist.
 - Editable ranges.
 - No advancements.


## Configuration:

Change the frequently entities near each beacon will recive effects.
 - `data modify storage blue:beacon frequency.ticks set value (ticks)` - Defualt `80 (4 seconds)`

## Editing the whitelist:

You can find the whitelist within `tags\entity_types` and can add or remove any desired mobs. All json entrees must use the `minecraft:` header.
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
