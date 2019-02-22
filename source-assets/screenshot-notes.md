The `screenshot-map.zip` save file depends on Creative Mode (0.16 fixed version) for the passive power provider, which was the most convenient way to avoid having "no power" icons flash over the inserters and roboports.

Screenshot command used in Factorio console to create `hero-image.png` (with "alt mode" off):

    /screenshot 3840 2160 2.5

Adjust as necessary for your PC's display (example command was for 1080p).

For the last screenshot update, `game.player.position` was `{x=330.508, y=-3099.25}`. Unfortunately `game.player.zoom` is write-only (the game throws an error upon trying to read it), but it was probably between `1` and `1.2` based on experimenting with the value.

The compressed `hero-image.jpg` version for embedding in the Readme was resized with GraphicsMagick:

    gm convert hero-image.png -resize 1280x720 -quality 90 ../hero-image.jpg

Thumbnail is a very slightly adjusted 1:1 slice from the center of the screenshot, resized to 144x144 pixels.
