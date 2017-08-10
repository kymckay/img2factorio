# img2factorio
A python script to convert images into lua for factorio world generation. Requires [Pillow](https://python-pillow.org).

## Usage
Put the image to convert into the same directory as the script and run:

```
img2factorio.py <image>
```

When ran, the script checks which pixels in the image are closer to black than white and maps those (x,y) coordinates to a lua table. A new scenario under `%APPDATA%/Factorio/scenarios/<image>` is created in which the surface tiles that match those black pixels are replaced by void.

Note: The `rsc\simple-tile.lua` file provides the code used to tile the image on chunk generation. It is copied to the scenario's `control.lua` file and variables `width`, `height` and `img_table` are appended to the end by the python code.

## Command Line Arguments

 Argument | Description
 -|-
 --scale &lt;coef&gt; | scale the image and maintain the aspect ratio
 --width &lt;pixels&gt; | set the image width in pixels
 --height &lt;pixels&gt; | set the image height in pixels
 --border &lt;thickness&gt; | add a border around all edges of the image
 --quantize &lt;number&gt; | quantize the image colours into a limited number
 --threshold &lt;value&gt; | alter the greyscale value threshold pixels are compared to
 -c, --color | use custom tile associations in colors.py
 -i, --invert | invert the image colours
 -t, --tile | make the image seamless
 -p, --preview | save a preview image and exit

 ## Developer Notes

This script was just something I wrote for my own entertainment and not intended to be perfectly optimised or idiot-proofed, but if you'd like to submit a PR or issue it's more than welcome.
