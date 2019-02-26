The `screenshot-map.zip` save file is a semi-plausible layout of warehouses around a train track, with trees and other decoratives added in the map editor to make it look nice. Originally, a Creative Mode power provider was used to avoid flashing "No power" icons, but that mod does not work with Factorio 0.17. So there's a small coal power setup that might need to be hand-fed if it runs out (there's a coal mine near the demo setup, to the west).

Even though Creative Mode is no longer enabled in the save, its cheat effects (free hand-crafting, god controller instead of player character, etc.) remain and should make it easy to renovate the screenshot demo layout if needed.

Screenshot command used in Factorio console to create `hero-image.png` (with "alt mode" off):

    /screenshot 3840 2160 2.5

Adjust as necessary for your PC's display (example command was for 1080p).

For the first "hero" screenshot, `game.player.position` was `{x=330.508, y=-3099.25}`. Eyeballing a position near here should give a good screenshot for future updates (but the player position is read-only, so it would be difficult to get the exact position again if any map edits are needed). Unfortunately `game.player.zoom` is write-only (the game throws an error upon trying to read it), but it was probably between `1` and `1.2` based on experimenting with the value. Again, eyeballing it is the best option (short of writing a small custom mod just for screenshotting this one).

The compressed `hero-image.jpg` version for embedding in the Readme was resized with GraphicsMagick:

    gm convert hero-image.png -resize 1280x720 -quality 90 ../hero-image.jpg

Thumbnail is a very slightly adjusted 1:1 slice from the center of the screenshot, resized to 144x144 pixels.
