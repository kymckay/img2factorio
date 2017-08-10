# img2factorio
A python script to convert images into lua for factorio world generation. Requires [Pillow](https://python-pillow.org).

## Usage
Put the image to convert into the same directory as the script and run:

```
img2factorio.py <image>
```

When ran, the script checks which pixels in the image are closer to black than white and maps those (x,y) coordinates to a lua table. A new scenario under `%APPDATA%/Factorio/scenarios/<image>` is created in which the surface tiles that match those black pixels are replaced by void.

Note: The `simple-tile.lua` file inside the `template` directory provides the code used to tile the image on chunk generation. It is copied to the scenario's `control.lua` file and variables `width`, `height` and `img_table` are appended to the end by the python code.

## Command Line Arguments

 Argument | Description
 -|-
 -scale &lt;coefficient&gt; | scale the image and maintain the aspect ratio
 -width &lt;pixels&gt; | set the image width in pixels
 -height &lt;pixels&gt; | set the image height in pixels
 -border &lt;thickness&gt; | add a border around all edges of the image
 -quantize &lt;number&gt; | quantize the image colours into a limited number
 -invert | invert the image colours
 -tile | make the image seamless
 -preview | save a preview image and exit

 ## Developer Notes

This script was just something I wrote for my own entertainment, but if you'd like to submit a PR or issue it's more than welcome. The code is certainly not optimised in its current state and it hasn't been idiot-proofed (i.e. it won't complain at you if you pass it valid arguments that are ridicilous). There's also some functionality that isn't implemented which might make some of the code seem pointless (e.g. the lua code reads the tile to insert from the table and so support for other tiles/entities could easily be added - allowing handmade world tiles to be made in image editing software).
